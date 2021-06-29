<header class="navbar navbar-fixed-top navbar-inverse">
  <div class="container">
    <%= link_to "Sample App", root_path, id: "logo" %>
    <nav>
      <ul class="nav navbar-nav navbar-right">
        ::before
        <li>
          <a class="header-list" href=""トップ<a/> == $0
        </li>
        <%= link_to "Top", root_path %></li> 
        <% if logged_in? %>
          <li><%= link_to "Users", '#' %></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              Account <b class="caret"></b>
            </a>
            <ul class="dropdown-menu">
              <li><%= link_to "Show", current_user %></li>
              <li><%= link_to "Settings", '#' %></li>
              <li class="divider"></li>
              <li><%= link_to "Log out", logout_path, method: :delete %></li>
            </ul>
          </li>
        <% else %>
          <li><%= link_to "Log in", login_path %></li>
        <% end %>
      </ul>
    </nav>
  </div>
</header>





<header class="navbar navbar-fixed-top navbar-inverse">
  <div class="container">
    <%= link_to "Task App", root_path, id: "logo" %>
    <nav>
      <ul class="nav navbar-nav navbar-right">
        <li>
          <%= link_to "トップ", root_path, id: "header-list" %>
        </li>
        
        <% if logged_in? %>
          <li><%= link_to "利用者一覧", '#' %></li>
          <li><%= link_to "タスク一覧", '#' %></li>
          <li><%= link_to "管理者", '#' %><b class="caret"></b>
        
          
        
          <li class="dropdown">
            <a class="header-list"href="#" class="dropdown-toggle" data-toggle="dropdown"></a>
            <ul class="dropdown-menu">
              <li><%= link_to "Show", current_user %></li>
              <li><%= link_to "Settings", '#' %></li>
              <li class="divider"></li>
              <li><%= link_to "ログアウト", logout_path, method: :delete %></li>
            </ul>
          </li>
        <% else %>
          <li><%= link_to "ログイン", login_path, id: "header-list" %></li>
        <% end %>
      </ul>
    </nav>
  </div>
</header>

<% provide(:title, 'Users') %>

<h1>利用者一覧</h1>

<div class="row">
<div class="col-md-10 col-md-offset-1">
  <%= will_paginate %>
  <table class="table table-condensed table-hover" id="table-users">
    <thead>
      <tr>
        <th><%= User.human_attribute_name :name %></th>
      </tr>
    </thead>

    <tbody>
    <% @users.each do |user| %>
      <tr>
        <td>
          <%= link_to user.name, user %>
          <% if user.admin? %>
            <span class="label label-primary label-user-division">管理者</span>
          <% else %>
            <span class="label label-success label-user-division">一般</span>
          <% end %>
        </td>
        <td>
          <% unless user.admin? %>
            <%= link_to "削除", user, method: :delete,
            data: { confirm: "#{user.name}を削除します。よろしいですか？" },
            class: "btn btn-danger btn-sm pull-right" %>
          <% end %>
        </td>
      </tr>
    <% end %>
   </tbody>
  </table>
  <%= will_paginate %>
 </div>
</div>
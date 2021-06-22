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

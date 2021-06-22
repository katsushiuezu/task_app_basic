Rails.application.routes.draw do
 root 'static_pages#top'
  get '/signup', to: 'users#new'
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  # get 'tasks/:id/edit, to: 'tasksposts#edit,as::edit_post
  resources :users do
    resources :tasks
  end
end
 
  # get 'tasks/new'
  # get 'tasks/index'
  # get 'tasks/:id', to: 'tasks#show',as::task

  
  
 
  
  
  
  
  # delete '/logout', to: 'sessions#destroy'
  
  
    


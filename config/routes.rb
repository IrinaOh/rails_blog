Rails.application.routes.draw do  

  resources :users
  resources :posts do
    resources :postcomments
  end
  
  resources :friendships

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  root to: 'users#new'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

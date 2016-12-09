Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/create'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/show'

  get 'posts/update'

  get 'posts/destroy'

  get 'posts/search'

  get 'users/index'

  get 'users/create'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  get 'users/update'

  get 'users/destroy'

  get 'users/search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

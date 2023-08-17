Rails.application.routes.draw do
  get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index show create new] do
    resources :bookmarks, only: %i[show create new]
  end
  resources :bookmarks, only: %i[destroy]
  # resources :movies
  # resources :bookmarks
  # Defines the root path route ("/")
  # root "articles#index"
end

SampleApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root to:'static_pages#home'
  match '/contact', to:'static_pages#contact'
  match '/help', to:'static_pages#help'
  match '/about', to:'static_pages#about'
  match '/signup', to:'users#new'
  match '/signout', to:'sessions#destroy',via: :delete
  match '/signin', to:'sessions#new'
 
end

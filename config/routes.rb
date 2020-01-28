Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  root to: 'books#books'
  get 'todolists/new'

  post 'todolists' => 'todolists#create'
end

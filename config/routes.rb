Rails.application.routes.draw do
  # devise_for :users
  # get 'products/new'
  # get 'products', to: 'products#show'
  resources :products, only: %i[new create show destroy]
  get 'products/:id' => 'products#show'
  root 'products#index'

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

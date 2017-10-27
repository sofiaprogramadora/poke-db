Rails.application.routes.draw do
  resources :atrapados
  devise_for :users, controllers: {
  	sessions: 'users/sessions'
  }
  resources :pokemons
  root 'pokemons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

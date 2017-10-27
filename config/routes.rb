Rails.application.routes.draw do
  resources :atrapados
  devise_for :users
  resources :pokemons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

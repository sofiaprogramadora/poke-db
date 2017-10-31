Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :catched do
  	get :upgrade
  end
  devise_for :users, controllers: {
  	sessions: 'users/sessions'
  }
  resources :pokemons
  root 'pokemons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end
  resources :users do
    resources :groups do
      resources :expenses
    end
  end
  root :to => 'groups#welcome'
end

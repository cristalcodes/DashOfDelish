Rails.application.routes.draw do
  resources :categories

  resources :recipes, only: [:index, :new, :create, :show]

  root to: 'application#welcome'
  
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'}
  
  devise_scope :user do 
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

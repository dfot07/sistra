Rails.application.routes.draw do
  
  resources :property_certificate_sequences
  resources :request_sequence_properties
  resources :petitioners
  resources :appearers
  resources :properties
  resources :request_properties
  devise_for :users

  authenticated :user do
    root 'welcome#index'
  end

  unauthenticated :user do
    devise_scope :user do
      root 'welcome#unregistered', as: :unregistered_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

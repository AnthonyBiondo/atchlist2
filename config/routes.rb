Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

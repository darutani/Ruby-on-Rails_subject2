Rails.application.routes.draw do

  root 'rooms#top'
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/profile/:id' => "users#profile", as: "user_profile"
  get 'users/account/:id' => "users#account", as: "user_account"
  patch "users/profile/:id/update" => "users#update", as: "user_update"

  resources :rooms do
    collection do
      get 'top'
      get "search"
    end
    resources :reserves, only: [:create, :new, :show] 
  end

  get "reserves/index" => "reserves#index"
  
end

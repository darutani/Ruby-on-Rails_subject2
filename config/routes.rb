Rails.application.routes.draw do
  get 'reserves/index'
  get 'reserves/confirm'
  get 'reserves/decision'
  root 'rooms#top'
  
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
		passwords: "users/passwords"
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/profile/:id' => "users#profile", as: "user_profile"
  get 'users/account/:id' => "users#account", as: "user_account"

  resources :rooms do
    collection do
      get 'top'
      get "search"
    end
  end
end

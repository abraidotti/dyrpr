Rails.application.routes.draw do
  devise_for :pilots
  root to: "home#index"

  resources :reports
end

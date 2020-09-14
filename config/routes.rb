Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users
  end

  namespace :v1, defaults: { format: :json } do
    resources :contacts
    resources :sessions, only: [:create, :destroy]
  end
end

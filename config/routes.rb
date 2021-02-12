Rails.application.routes.draw do
  devise_for :users
  resources :clubhouses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "clubhouses#index"
end

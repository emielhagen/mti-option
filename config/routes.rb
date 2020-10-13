Rails.application.routes.draw do
  resources :boxer_pallets
  resources :grading_pallets
  resources :pallets

  root to: 'boxer_pallets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

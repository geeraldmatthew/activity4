Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :controller
  get "grades", to: "grades#index"
  get "grades/new", to: "grades#new"
  get "grades/delete/:id", to: "grades#destroy"
  get "grades/:id", to: "grades#show"
  post "grades", to: "grades#create"
end

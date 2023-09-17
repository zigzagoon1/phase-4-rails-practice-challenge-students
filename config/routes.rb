Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :instructor, only: [ :show, :create , :update, :destroy]
  resources :student, only: [:show, :create, :update, :destroy]

end

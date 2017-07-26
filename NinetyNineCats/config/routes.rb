Rails.application.routes.draw do

  resources :cats, only: [:index, :new, :show, :create, :edit, :update]

end

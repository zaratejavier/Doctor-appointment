Rails.application.routes.draw do
  root 'patients#index'

  resources :physicians
  resources :patients
end

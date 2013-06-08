Rails.application.routes.draw do
  resources :name_has_access_points


  resources :controlled_access_points


  resources :people
  resources :names
end

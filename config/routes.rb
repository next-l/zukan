Rails.application.routes.draw do
  resources :person_has_names


  resources :name_has_access_points


  resources :controlled_access_points


  resources :people
  resources :names

  root :to => "people#index"
end

Rails.application.routes.draw do
  resources :add_type_of_name_id_to_names


  resources :type_of_names


  resources :person_has_names


  resources :name_has_access_points


  resources :controlled_access_points


  resources :people
  resources :names

  root :to => "people#index"
end

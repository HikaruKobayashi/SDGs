Rails.application.routes.draw do
  resources :partnerships_for_the_goals
  resources :peace_justice_and_strong_institutions
  resources :life_on_lands
  resources :life_below_waters
  resources :climate_actions
  resources :responsible_consumption_and_productions
  resources :sustainable_cities_and_communities
  resources :reduced_inequeaties
  resources :industry_innovation_and_infrastructures
  resources :decent_work_and_economic_growths
  resources :affordable_and_clean_energies
  resources :clean_water_and_sanitations
  resources :gender_equalities
  resources :quality_eduactions
  resources :good_health_and_well_beings
  resources :zero_hungers
  resources :no_poverties
  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  root to: 'users#index.html.haml'
  resources :tasks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  # root to: 'static#ndex'
  resources :event_volunteers
  resources :event_nonprofits
  resources :volunteer_nonprofits
  resources :events
  resources :nonprofits
  resources :volunteers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'confirmation/thankyou'

  root "participants#new"
  resources :participants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

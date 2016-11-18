# == Route Map
#
#   Prefix Verb   URI Pattern              Controller#Action
#     root GET    /                        cats#index
#     cats GET    /cats(.:format)          cats#index
#          POST   /cats(.:format)          cats#create
#  new_cat GET    /cats/new(.:format)      cats#new
# edit_cat GET    /cats/:id/edit(.:format) cats#edit
#      cat GET    /cats/:id(.:format)      cats#show
#          PATCH  /cats/:id(.:format)      cats#update
#          PUT    /cats/:id(.:format)      cats#update
#          DELETE /cats/:id(.:format)      cats#destroy
#

Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
  root 'cats#index'

  resources :cats
end

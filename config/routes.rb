# == Route Map
#
#      Prefix Verb URI Pattern            Controller#Action
# ingredients GET  /ingredients(.:format) ingredients#index
#

Rails.application.routes.draw do
  resources :ingredients, only: [:index]

end

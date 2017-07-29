# == Route Map
#
#      Prefix Verb URI Pattern            Controller#Action
# ingredients GET  /ingredients(.:format) ingredients#index
#

Rails.application.routes.draw do
  root 'ingredients#index'

  get 'ingredients/search'

  resources :ingredients, only: [:index]

end

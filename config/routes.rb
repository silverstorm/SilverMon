Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  mount ActionCable.server => "/cable"
end

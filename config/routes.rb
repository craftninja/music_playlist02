Rails.application.routes.draw do
  get '/' => 'dashboard#index'
  # resources :playlist
end

Rails.application.routes.draw do
  resources :portfolios
  root to: 'portfolios#index'
end

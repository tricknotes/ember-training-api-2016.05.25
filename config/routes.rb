Rails.application.routes.draw do
  root to: 'welcome#index'

  namespace :api do
    resources :notes
  end
end

Rails.application.routes.draw do
  root to: 'welcome#index'

  get 'notes(/*any)' => 'welcome#index' # This is a endpoint for Ember App.

  namespace :api do
    resources :notes
  end
end

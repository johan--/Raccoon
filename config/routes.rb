Rails.application.routes.draw do
  mount EmberCLI::Engine => "ember-tests" if Rails.env.development?

  root 'ember#index'

  get '/admin', to: 'ember#admin'
end

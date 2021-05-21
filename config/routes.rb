Rails.application.routes.draw do
  get '/birds' => 'birds#index'
  get '/birds/:id' => 'birds#show'
  # get route to birds/:id, from the birds controller and bird controller show action
end
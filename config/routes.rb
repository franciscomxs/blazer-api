Blazer::Api::Engine.routes.draw do
  resources :queries, only: :show
end

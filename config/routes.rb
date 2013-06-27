TransitApi::Application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :agencies, only: [:index, :show]
      resources :routes, only: [:index, :show]
      resources :stops, only: [:index, :show]
      resources :stop_times, only: [:index, :show]
      resources :trips, only: [:index, :show]
    end
  end
end

TransitApi::Application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :agencies, only: [:index, :show]
    end
  end
end

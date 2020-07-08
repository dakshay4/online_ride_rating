Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
  			resources :ratings, only: [] do
  				collection do
	  				post :submit
	  				get :fetch_average
	  			end
  			end
  		end
  	end
end

Rails.application.routes.draw do


	namespace :admin do
		root 'pages#index'
		resources :students do
			collection do
				match 'search' => 'students#search', via: [:get, :post], as: :search
			end
		end
		resources :users
	end

	devise_for :users

	resources :students
	resources :homeworks

	root 'pages#index'

end

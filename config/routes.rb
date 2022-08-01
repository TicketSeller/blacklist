Rails.application.routes.draw do
  resources :users do
    collection do
      post :import
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'
  get '/black_list', to: 'users#blacklist'
  get '/search', to: 'users#search'
end

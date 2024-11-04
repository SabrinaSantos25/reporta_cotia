Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # 
  
  # Define routes for report index
  resources :reports, only: [:index, :show, :new, :create]
end

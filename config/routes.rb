Rails.application.routes.draw do
  root  "companies#index"
  resources :companies do
  	resources :areas
  	resources :employees, only: [:create]
  end
  post 'employees/:company_id', to: 'employees#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root "dashboard#index"
  resources :employee, :except => [:new, :edit]
  match ':controller(/:action(/:id))', :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :proyects
  resources :workers
  root to: 'dashboardctrl#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

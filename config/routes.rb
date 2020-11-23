Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogger, only: [:index,:new,:create,:show]
  resources :destination, only: [:index,:show]
  resources :post, only:[:create,:edit,:index,:show,:new]

end

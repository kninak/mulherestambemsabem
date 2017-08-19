Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mulhers#index'
  resources :mulhers, only: [:new, :create, :show, :edit, :update]

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  mount Attachinary::Engine => "/attachinary"

  resources :cocktails do
    resources :doses, only: [:new, :create, :show, :update]
  end

  resources :doses, only: [:destroy]

end

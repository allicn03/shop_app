Rails.application.routes.draw do
devise_for :users
    resources :users
    resources :products do
    resources :comments
  end

  resources :orders, only: [:index, :show, :create, :destroy]
    get 'simple_pages/test'
    get 'simple_pages/about'
    get 'simple_pages/contact'

    get 'simple_pages/landing_page'

    post 'simple_pages/thank_you'

    root 'simple_pages#index'
  end

  #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#end

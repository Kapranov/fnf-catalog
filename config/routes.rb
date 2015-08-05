Rails.application.routes.draw do

  resources :companies
  resources :products
  resources :categories
  resource  :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'landing/index'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  get 'dashboards/index'
  get 'store/index'

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

  match 'dashboard', to: 'dashboards#index', via: [:get]
  match 'store', to: 'store#index', via: [:get]
  match 'shop', to: 'store#index', via: [:get]

  as :user do
    get 'users', :to => 'dashboards#index', :as => :user_root
  end

  root to: "landing#index"

  devise_for :users
  # devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => '/'}

end

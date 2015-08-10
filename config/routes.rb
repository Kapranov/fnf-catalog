Rails.application.routes.draw do
  mount FullcalendarEngine::Engine => "calendar"
  # mount FullcalendarEngine::Engine => "users/:user_id/calendar"
  # mount FullcalendarEngine::Engine => "users/:user_id/fullcalendar_engine"
  # mount FullcalendarEngine::Engine => "/application"
  # mount FullcalendarEngine::Engine => "/fullcalendar_engine"

  resources :companies
  resources :products
  resources :categories
  resource  :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  resources :forum_threads do
    resources :forum_posts, module: :forum_threads
  end


  get 'landing/index'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  get 'dashboards/index'
  get 'dashboards/hello'
  get 'store/index'
  get 'profiles/index'
  get 'profiles/hello'
  get 'calendar/index'
  get 'activities/index'
  get 'blogs/index'

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

  match 'dashboard', to: 'dashboards#index', via: [:get]
  match 'dashboards', to: 'dashboards#index', via: [:get]
  match 'profile', to: 'profiles#index', via: [:get]
  match 'profile', to: 'profiles#hello', via: [:get]
  match 'landing', to: 'landing#index', via: [:get]
  match 'store', to: 'store#index', via: [:get]
  match 'shop', to: 'store#index', via: [:get]
  match 'calendar', to: 'calendar#index', via: [:get]
  match 'activity', to: 'activities#index', via: [:get]

  as :user do
    get 'users', :to => 'dashboards#index', :as => :user_root
  end

  root to: "landing#index"

  devise_for :users
  # devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => '/'}

end

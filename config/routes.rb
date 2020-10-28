Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'reviews/index'
  root 'pages#index'
  get 'pages/review'
  get 'films/index'
  get 'films/detail'
  resources :reviews, only: [:create, :destroy]
  resources :films do
    resources :reviews
  end
  resources :comments

  namespace :admin do
          get 'static_pages/home'
          resources :films
        end
  devise_for :users,
            path: '',
            path_names: {sign_in: 'login' ,sign_out: 'logout' ,edit: 'profile',sign_up: 'resgistration'},
            controllers: {omniauth_callbacks: 'omniauth_callbacks' }

      as :user do
        get "signin" => "devise/sessions#new"
        post "signin" => "devise/sessions#create"
      devise_scope :user do
        get '/users/sign_out' => 'devise/sessions#destroy'
      end
  end
  scope "(:locale)", locale: /en|vi/ do
    resources :reviews
    resources :users
    resources :admin
    get 'admin/static_pages/home'
  end
    resources :films
end

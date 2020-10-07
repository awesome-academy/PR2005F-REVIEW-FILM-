Rails.application.routes.draw do
  get 'reviews/index'
  root 'pages#index'
  get 'pages/review'
  get 'films/index'
    
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

end

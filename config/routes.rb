Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :create]

  resources :categories, only: [:index, :create]

  match '/*path' => 'application#cors_preflight_check', via: :options

end

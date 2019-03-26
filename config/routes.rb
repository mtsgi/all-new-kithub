Rails.application.routes.draw do
    root "top#index"
    get "users/login" => "users#login"
    get "pickup" => "top#pickup"
    get "guide" => "top#guide"
    get "my" => "top#my"
    resources :users , param: :authorid
    get ":id" => "users#show"
    resources :session, only: [:create, :destroy]
end
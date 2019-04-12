Rails.application.routes.draw do
    root "top#index"
    get "users/login" => "users#login"
    get "pickup" => "top#pickup"
    get "guide" => "top#guide"
    get "my" => "top#my"
    resources :users , param: :authorid
    resources :apps , param: :appid
    get ":id" => "users#show"
    get ":id/apps" => "users#apps"
    get ":authorid/:appid" => "apps#show"
    resources :sessions, only: [:create, :destroy]
end
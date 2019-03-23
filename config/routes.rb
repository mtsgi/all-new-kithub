Rails.application.routes.draw do
    root "top#index"
    resources :users , param: :authorid
    get "pickup" => "top#pickup"
    get "guide" => "top#guide"
    get ":id" => "users#show"
end
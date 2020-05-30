Rails.application.routes.draw do

    resources :editcategory
    resources :editpost, :only => [:index,:new,:create,:edit,:update,:destroy]
    get "login" => "sessions#new"
    post "login" => "sessions#create"
    delete "logout" => "sessions#destory"

    get "/" => "fixedpage#index"
    get "article/:id" => "posts#show"
    post "article/:id/create" => "posts#create"
    get "article" => redirect("/")
    get "category/:id" => "fixedpage#category"
    get "category" => redirect("/")

    resources :portfolio, :only => [ :index ]
    
    #btc
    get "blockchain/btc_exproler" => "btc_exproler#index"
    get "blockchain/btc_exproler/block/:id" => "btc_exproler#show"
    get "blockchain/btc_exproler/block" => redirect("/")
    get "blockchain" => redirect("/")
    
    #api
    get "api/bitcoin" => "api#bitcoin"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

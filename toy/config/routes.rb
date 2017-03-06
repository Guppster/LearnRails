Rails.application.routes.draw do
    resources :microposts, except: [:show]
    resources :users, except: [:show]

    root to: "users#index"
end

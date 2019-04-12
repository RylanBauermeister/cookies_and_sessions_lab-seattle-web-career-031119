Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :product, only:[:index] do
    get '/add', to: "product#add"
  end

  get '/', to: "application#index"
  post '/', to: "application#add_to_cart"
end

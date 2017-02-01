Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "products#index"
  # get "/products", to: "products#products_method"

  # get "/new_product", to: "products#new_product_form_method"
  # post "/new_product_result", to: "products#new_product_result_method"

#products routes
  get "/products", to: "products#index"
  get "/products/new", to: "products#new"
  post "/products", to: "products#create"
  get "/products/:id", to: "products#show"
  get "/products/:id/edit", to: "products#edit"
  patch "/products/:id", to: "products#update"
  delete "/products/:id", to: "products#destroy"

#suppliers routs
  get "/suppliers", to: "suppliers#index"
  get "/suppliers/new", to: "suppliers#new"
  post "/suppliers", to: "suppliers#create"
  get "/suppliers/:id", to: "suppliers#show"
  get "/suppliers/:id/edit", to: "suppliers#edit"
  patch "/suppliers/:id", to: "suppliers#update"
  delete "/suppliers/:id", to: "suppliers#destroy"

#images routes
  get "/products/:product_id/images/new", to: "images#new"
  post "/products/:product_id/images", to: "images#create"
  
#users routes
  get "/signup", to: "users#new"
  post "/users", to: "users#create"

#sessions routes
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
end

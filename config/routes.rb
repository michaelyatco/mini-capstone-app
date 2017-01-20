Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/products", to: "products#products_method"

  get "/new_product", to: "products#new_product_form_method"
  post "/new_product_result", to: "products#new_product_result_method"

  get "/recipes", to: "recipes#index"
end

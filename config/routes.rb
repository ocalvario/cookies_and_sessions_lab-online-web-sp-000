Rails.application.routes.draw do
  
  root 'products#index'

  post 'products/add', to: 'products#add', as: 'add_product'
end

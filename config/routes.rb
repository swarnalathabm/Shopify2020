Rails.application.routes.draw do
  resources :accounts
  resources :product_tags
  resources :product_details
 
  get 'tag_creation/Tag_setup'

  # For#Get details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # root 'tag_creation#Tag_setup'
 root 'product_tags#new'
 
end

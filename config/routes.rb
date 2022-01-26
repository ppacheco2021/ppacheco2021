Rails.application.routes.draw do
  
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :restaurants do 
  resources :reviews
end
get '/home', to: 'restaurants#home'
root  'restaurants#home' 

end

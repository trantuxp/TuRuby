Rails.application.routes.draw do
  resources :giohangs
  resources :hanghoas
  resources :danhmucs
  resources :sanphams
  resources :users
  root to: "home#index"
  resources :admin
  resources :posts
  resources :donhang
  resources :chitietdh
 
  get '/signin', to: 'users#signin'

  get '/sign', to: 'session#index'
  post '/session' => 'session#create'
  get '/session/logout' => 'session#logout'

  get '/bydanhmuc' => 'hanghoas#bydanhmuc'
  get '/chitietsp' => 'hanghoas#chitietsp'
  get '/hhbytim' => 'hanghoas#timsp'

  get '/add' => 'giohangs#add'
  get '/fix' => 'giohangs#fix'
  get '/delete' => 'giohangs#delete'
  get '/giohang', to: 'giohangs#giohang'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

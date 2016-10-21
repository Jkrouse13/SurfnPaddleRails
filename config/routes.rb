Rails.application.routes.draw do
  root 'posts#latest'
  get '/post/:id' => 'posts#show', as: :post
  get '/about' => 'about#index', as: :about
  get '/index' => 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

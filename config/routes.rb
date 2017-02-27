Rails.application.routes.draw do
  get 'home/index'

  get 'home/private'

  devise_for :users

  authenticated :user do
     root to: 'home#private', as: 'private'
   end
   unauthenticated :user do
     root 'home#index', as: 'front'
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

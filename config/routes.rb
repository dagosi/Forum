Forum::Application.routes.draw do

  devise_for :users

  resources :topics do
    resources :comments
  end


  root :to => 'home#index'

end

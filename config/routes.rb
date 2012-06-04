Forum::Application.routes.draw do
  resources :authentications

#This is a route example, to make it works, you must create an authnetications controller.
  match '/auth/:provider/callback' => 'authentications#create'


  devise_for :users, controllers: { registrations: 'registrations' }

  resources :topics do
    resources :comments
  end


  root :to => 'home#index'

end

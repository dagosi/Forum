Forum::Application.routes.draw do

  resources :topics do
    resources :comments
  end


  # root :to => 'welcome#index'

end

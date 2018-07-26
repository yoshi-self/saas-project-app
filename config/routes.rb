Rails.application.routes.draw do
  resources :members
  get 'home/index'
  root :to => "home#index"
    
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match '/user/confirmation' => 'milia/confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => { 
    :registrations => "milia/registrations",
    :confirmations => "milia/confirmations",
    :sessions => "milia/sessions", 
    :passwords => "milia/passwords", 
  }


  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

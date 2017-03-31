Rails.application.routes.draw do
  
  resources :wikis


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
devise_for :users, controllers: {
    sessions: 'users/sessions'
      }    
    
  get 'about' => 'welcome#about'

 root 'welcome#index'
end

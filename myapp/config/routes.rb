Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
devise_for :users, controllers: {
    sessions: 'users/sessions'
      }    
    
  get 'welcome/index'

  get 'welcome/about'

 root 'welcome#index'
end

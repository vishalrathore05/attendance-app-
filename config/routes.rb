Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'dashboard', to: 'static_pages#dashboard'
  post 'submit_attendance', to: 'static_pages#submit_attendance'
  root "static_pages#landing_page"
  
 
end

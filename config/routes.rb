Rails.application.routes.draw do
  
  get 'users/index'
  get 'users/show'
  root 'homes#top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }
  

end

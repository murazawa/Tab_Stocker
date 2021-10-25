Rails.application.routes.draw do

  root 'homes#top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  resources :link_groups, only: [:show]
  resources :my_links, only: [:index, :show, :edit, :create, :update, :destroy]

end

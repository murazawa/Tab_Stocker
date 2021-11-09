Rails.application.routes.draw do

  root 'homes#top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  resources :my_links, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :link_groups, only: [:edit, :create, :update, :destroy]
end

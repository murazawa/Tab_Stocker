Rails.application.routes.draw do

  root 'homes#top'
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  resources :tab_collections, only: [:index]
  resources :my_links, only: [:index, :show, :edit, :create, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    get 'favorite_links'
  end
  resources :link_groups, only: [:create, :update, :destroy]
end

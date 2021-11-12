Rails.application.routes.draw do

  get 'tab_collections/index'
  root 'homes#top' do
  end
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  resources :tab_collections, only: [:index] do
    resource :favorites, only: [:create, :destroy]
  end
  resources :my_links, only: [:index, :show, :edit, :create, :update, :destroy]
  resources :link_groups, only: [:create, :update, :destroy]
end

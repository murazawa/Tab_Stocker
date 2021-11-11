Rails.application.routes.draw do

  root 'homes#top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  get 'my_links/link_edit' => 'my_links#link_edit'
  resources :my_links, only: [:index, :show, :edit, :create, :update, :destroy] do
    get 'group_edit' => 'my_links#group_edit'
  end
  resources :link_groups, only: [:edit, :create, :update, :destroy]
end

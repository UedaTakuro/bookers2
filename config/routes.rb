Rails.application.routes.draw do
  get 'home/about' => 'homes#about'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#top'
  get 'home/about' => 'users#about'
  resources :books, only:[:new, :create, :show, :index, :destroy, :edit, :update]
  resources :users, only:[:show, :index, :edit, :update]
end

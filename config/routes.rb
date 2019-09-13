Rails.application.routes.draw do

  root 'firstpage#index'

  resources :participants do
    resources :authors
    resources :articles
  end
  resources :authors do
    resources :participants
  end
  resources :myarticles do
    resources :articles
  end
  resources :articles do
    resources :editorials
    resources :myarticles
  end
  resources :editorials do
    resources :articles
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

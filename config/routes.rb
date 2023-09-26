Rails.application.routes.draw do
    resources :lists, only: [:index, :show, :create, :new, :destroy] do
    resources :bookmarks, only:[:new, :create]
  end
    resources :bookmarks, only: :destroy
    root to: 'lists#index'
  end

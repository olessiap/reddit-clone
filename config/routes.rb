Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]
  resources :subreddits, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create] do
      resources :comments, only: [:index, :show]
    end
  end
end

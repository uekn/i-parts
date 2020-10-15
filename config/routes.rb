Rails.application.routes.draw do
  root to: "posts#index"
  resource :posts, only: [:index, :show, :new, :create]
end
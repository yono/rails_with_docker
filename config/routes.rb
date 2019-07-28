Rails.application.routes.draw do
  resources :tasks, only: [:index, :create, :destroy] do
    put :done, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

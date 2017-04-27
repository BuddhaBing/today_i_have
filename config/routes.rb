Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'updates#index'

  resources :updates

  get 'tags/:tag', to: 'updates#index', as: :tag

end

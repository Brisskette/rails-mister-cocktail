Rails.application.routes.draw do
  # root to: 'cocktails#index', as: :index

  get '/cocktails', to: "cocktails#index", as: :cocktails

  get 'cocktails/new', to: "cocktails#new"

  post 'cocktails', to: "cocktails#create"

  get 'cocktails/:id', to: "cocktails#show", as: :cocktail



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

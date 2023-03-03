Rails.application.routes.draw do
  root "cats#index"

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :cats, concerns: :paginatable  do
    match :search, to: 'cats#index', via: :post, on: :collection
  end

  resources :cat_colors, only: %i[new create destroy show]
  resources :cat_breeds, only: %i[new create destroy show]
end

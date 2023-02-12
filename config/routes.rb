Rails.application.routes.draw do
  root "cats#index"

  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :cats, concerns: :paginatable
end

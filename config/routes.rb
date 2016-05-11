Rails.application.routes.draw do

  root "categories#index"

  resources :categories do
    resources :movies
  end

  get 'categories/category_id/movies/:id' => 'movies#show'

end

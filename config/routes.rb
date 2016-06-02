TechReviewSite::Application.routes.draw do

  root "products#index"
  get '/products/search' => 'products#search'
  resources :products do
    resources :reviews
  end
end

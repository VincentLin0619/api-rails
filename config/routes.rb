Rails.application.routes.draw do
  # get "/articles", to: "article#index"
  # get "/articles/:id", to: "article#show"
  # post "/articles", to: "article#create"
  # delete "/articles/:id", to: "article#destroy"
  resources :articles, only: %i[index show create destroy update]
end

Rails.application.routes.draw do
  apipie

  #root "japps#index"

  get "/japps", to: "japps#index"
  post "/japps", to: "japps#apply"



   root "jobs#index"

  get "/jobs", to: "jobs#index"
  get "/jobs", to: "jobs#show"
  put "/jobs", to: "jobs#update"
  post "/jobs", to: "jobs#new"
  delete "/jobs", to: "jobs#destroy"



end

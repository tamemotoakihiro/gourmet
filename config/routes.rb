Gourmet::Application.routes.draw do
  root to: "top#index"
  get '/login' => redirect('/auth/facebook'), :as => :login

  controller :sessions do
    get '/auth/:provider/callback' => :create
    get '/auth/failure' => :failure
    get '/logout' => :destroy, as: :logout
  end
end

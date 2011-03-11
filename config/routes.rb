UploaderDemo::Application.routes.draw do

  resources :folders



  root :to => "pages#home"

end

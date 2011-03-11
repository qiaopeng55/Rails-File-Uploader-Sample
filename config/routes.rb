UploaderDemo::Application.routes.draw do

  resources :folders do
    resources :file_infos
  end

  root :to => "pages#home"

end

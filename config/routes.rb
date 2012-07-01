Locomotive::Engine.routes.draw do
  resources :extensions, :only => [:index, :new, :create, :show, :destroy]
end

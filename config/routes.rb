LocomotiveContrib::Engine.routes.draw do
  resources :extensions, :only => [:index, :new, :create, :show, :destroy]
end

Locomotive::Engine.routes.draw do
  mount LocomotiveContrib::Engine => '/'
end

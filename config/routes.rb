LocomotiveContrib::Engine.routes.draw do
  resources :extensions
end

Locomotive::Engine.routes.draw do
  mount LocomotiveContrib::Engine => '/'
end

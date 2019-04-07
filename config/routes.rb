Rails.application.routes.draw do
  resources :solicitud_estructuras
  resources :solicitud_tanques
  resources :solicitud_tuberia
  resources :solicitud_servicios
  resources :contacto_clientes
  resources :clientes
  get 'Inicio', to: 'paginas#Inicio'
  get 'contacto', to: 'paginas#Contacto'
  get 'noticias', to: 'paginas#Noticias'
  get 'catalogos', to: 'paginas#Catalogos'

  devise_for :users, path: '', path_names: { sign_in: 'ingresar', sign_out: 'salir', sing_up: 'registro'}
  resources :events
  resources :visitors
  #root 'visitors#index'
  root 'paginas#Inicio'
end

Rails.application.routes.draw do
  resources :servicios
  resources :tipo_servicios
  resources :empleados
  resources :solicituds
  resources :cliente_contactos
  resources :solicitud_estructuras
  resources :solicitud_tanques
  resources :solicitud_tuberia
  resources :solicitud_servicios
  resources :contacto_clientes
  resources :clientes

  post 'solicitud/contacto', as: 'solicitud_contacto'
  
  get 'Inicio', to: 'paginas#Inicio'
  get 'contacto', to: 'paginas#Contacto'
  get 'noticias', to: 'paginas#Noticias'
  get 'catalogos', to: 'paginas#Catalogos'

  devise_for :users, path: '', path_names: { sign_in: 'ingresar', sign_out: 'salir', sing_up: 'registro'}
  resources :events
  resources :visitors

  root 'paginas#Inicio'
end

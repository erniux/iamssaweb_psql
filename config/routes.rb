Rails.application.routes.draw do
  resources :cotizacion_detalles
  resources :cotizacions
  resources :proyectos
  resources :servicios
  resources :tipo_servicios
  resources :empleados
  resources :solicituds
  resources :cliente_contactos
  resources :clientes
  resources :events
  resources :visitors

  post 'solicitud/contacto', as: 'solicitud_contacto'
  
  get 'Inicio', to: 'paginas#Inicio'
  get 'contacto', to: 'paginas#Contacto'
  get 'noticias', to: 'paginas#Noticias'
  get 'catalogos', to: 'paginas#Catalogos'

  devise_for :users, path: '', path_names: { sign_in: 'ingresar', sign_out: 'salir', sing_up: 'registro'}
  
  root 'paginas#Inicio'

end

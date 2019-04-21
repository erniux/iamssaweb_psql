class PaginasController < ApplicationController
  def Inicio
  #	@solicitud = Solicitud.last(5)
  	@solicitud = Solicitud.where(estatus: "Emitida")
  end

  def Contacto
  end

  def Noticias
  end

  def Catalogos
    @clientes = Cliente.all

  end
end

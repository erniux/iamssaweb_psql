class PaginasController < ApplicationController
  def Inicio

  end

  def Contacto
  end

  def Noticias
  end

  def Catalogos
    @clientes = Cliente.all

  end
end

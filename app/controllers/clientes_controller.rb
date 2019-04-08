class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]
  access user: :all, site_admin: :all

  def index
    @clientes = Cliente.all
  end

  def show
  end

  def new
    @cliente = Cliente.new
    @cliente.cliente_contactos.build
  end

  def edit
  end

  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      redirect_to @cliente, notice: 'Cliente was successfully created.'
    else
      render :new
    end
  end

  def update
    if @cliente.update(cliente_params)
      redirect_to @cliente, notice: 'Cliente was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cliente.destroy
    redirect_to clientes_url, notice: 'Cliente was successfully destroyed.'
  end

  private
    def set_cliente
      @cliente = Cliente.find(params[:id])
      @cliente.cliente_contactos.build
    end

    def cliente_params
      params.require(:cliente).permit(:nombre_fiscal, :nombre_comercial, :string, :rfc, 
        :calle_numero, :colonia, :poblacion, :estado, :codigo_postal, :telefono_oficina, 
        :telefono_celular, :telefono_directo, :correo, :medio_contacto, :precio, :presupuesto, 
        :credito, :revision_lunes, :revision_martes, :revision_miercoles, :revision_jueves, 
        :revision_viernes, :revision_sabado, :cobro_lunes, :cobro_martes, :cobro_miercoles, 
        :cobro_jueves, :cobro_viernes, :cobro_sabado)
    end
end

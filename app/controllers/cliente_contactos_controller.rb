class ClienteContactosController < ApplicationController
  before_action :set_cliente_contacto, only: [:show, :edit, :update, :destroy]
  access user: :all, site_admin: :all

  def index
    @cliente_contactos = ClienteContacto.all
  end

  def show
  end

  def new
    @cliente_contacto = ClienteContacto.new
  end

  def edit
  end

  def create
    @cliente_contacto = ClienteContacto.new(cliente_contacto_params)

    if @cliente_contacto.save
      redirect_to @cliente_contacto, notice: 'Cliente contacto was successfully created.'
    else
      render :new
    end
  end

  def update
    if @cliente_contacto.update(cliente_contacto_params)
      redirect_to @cliente_contacto, notice: 'Cliente contacto was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cliente_contacto.destroy
    redirect_to cliente_contactos_url, notice: 'Cliente contacto was successfully destroyed.'
  end

  private
    def set_cliente_contacto
      @cliente_contacto = ClienteContacto.find(params[:id])
    end

    def cliente_contacto_params
      params.require(:cliente_contacto).permit(:nombre, :appaterno, :apmaterno, :telefono_directo, :correo, :puesto, :departamento, :clientes_id)
    end
end

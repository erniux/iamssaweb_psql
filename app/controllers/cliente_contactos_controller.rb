class ClienteContactosController < ApplicationController
  before_action :set_cliente_contacto, only: [:show, :edit, :update, :destroy]
  access user: :all, site_admin: :all

  # GET /cliente_contactos
  def index
    @cliente_contactos = ClienteContacto.all
  end

  # GET /cliente_contactos/1
  def show
  end

  # GET /cliente_contactos/new
  def new
    @cliente_contacto = ClienteContacto.new
  end

  # GET /cliente_contactos/1/edit
  def edit
  end

  # POST /cliente_contactos
  def create
    @cliente_contacto = ClienteContacto.new(cliente_contacto_params)

    if @cliente_contacto.save
      redirect_to @cliente_contacto, notice: 'Cliente contacto was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cliente_contactos/1
  def update
    if @cliente_contacto.update(cliente_contacto_params)
      redirect_to @cliente_contacto, notice: 'Cliente contacto was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cliente_contactos/1
  def destroy
    @cliente_contacto.destroy
    redirect_to cliente_contactos_url, notice: 'Cliente contacto was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_contacto
      @cliente_contacto = ClienteContacto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cliente_contacto_params
      params.require(:cliente_contacto).permit(:nombre, :appaterno, :apmaterno, :telefono_directo, :correo, :puesto, :departamento, :clientes_id)
    end
end

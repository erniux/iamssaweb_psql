class ContactoClientesController < ApplicationController
  before_action :set_contacto_cliente, only: [:show, :edit, :update, :destroy]
access user: :all, site_admin: :all

  # GET /contacto_clientes
  def index
    @contacto_clientes = ContactoCliente.all
  end

  # GET /contacto_clientes/1
  def show
  end

  # GET /contacto_clientes/new
  def new
    @contacto_cliente = ContactoCliente.new
  end

  # GET /contacto_clientes/1/edit
  def edit
  end

  # POST /contacto_clientes
  def create
    @contacto_cliente = ContactoCliente.new(contacto_cliente_params)

    if @contacto_cliente.save
      redirect_to @contacto_cliente, notice: 'Contacto cliente was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /contacto_clientes/1
  def update
    if @contacto_cliente.update(contacto_cliente_params)
      redirect_to @contacto_cliente, notice: 'Contacto cliente was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /contacto_clientes/1
  def destroy
    @contacto_cliente.destroy
    redirect_to contacto_clientes_url, notice: 'Contacto cliente was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto_cliente
      @contacto_cliente = ContactoCliente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contacto_cliente_params
      params.require(:contacto_cliente).permit(:nombre, :telefono, :correo, :departamento, :cargo)
    end
end

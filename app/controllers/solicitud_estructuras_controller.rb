class SolicitudEstructurasController < ApplicationController
  before_action :set_solicitud_estructura, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /solicitud_estructuras
  def index
    @solicitud_estructuras = SolicitudEstructura.all
  end

  # GET /solicitud_estructuras/1
  def show
  end

  # GET /solicitud_estructuras/new
  def new
    @solicitud_estructura = SolicitudEstructura.new
  end

  # GET /solicitud_estructuras/1/edit
  def edit
  end

  # POST /solicitud_estructuras
  def create
    @solicitud_estructura = SolicitudEstructura.new(solicitud_estructura_params)

    if @solicitud_estructura.save
      redirect_to @solicitud_estructura, notice: 'Solicitud estructura was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solicitud_estructuras/1
  def update
    if @solicitud_estructura.update(solicitud_estructura_params)
      redirect_to @solicitud_estructura, notice: 'Solicitud estructura was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /solicitud_estructuras/1
  def destroy
    @solicitud_estructura.destroy
    redirect_to solicitud_estructuras_url, notice: 'Solicitud estructura was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_estructura
      @solicitud_estructura = SolicitudEstructura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_estructura_params
      params.require(:solicitud_estructura).permit(:id_solicitud, :estructura, :columna_pr, :columna_hss_o_cajon, :columna_ptr_o_monten, :trabes_pr, :trabes_ps, :trabes_angulo_con_ptr, :angulo_con_angulo, :ptr_con_ptr, :union_filete, :union_a_tope, :espesor_columna, :espesor_trabe, :tiempo_fabricacion_montaje, :toneladas)
    end
end

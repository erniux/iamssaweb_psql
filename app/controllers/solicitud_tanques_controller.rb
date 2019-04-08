class SolicitudTanquesController < ApplicationController
  before_action :set_solicitud_tanque, only: [:show, :edit, :update, :destroy]
  access user: :all, site_admin: :all

  # GET /solicitud_tanques
  def index
    @solicitud_tanques = SolicitudTanque.all
  end

  # GET /solicitud_tanques/1
  def show
  end

  # GET /solicitud_tanques/new
  def new
    @solicitud_tanque = SolicitudTanque.new
  end

  # GET /solicitud_tanques/1/edit
  def edit
  end

  # POST /solicitud_tanques
  def create
    @solicitud_tanque = SolicitudTanque.new(solicitud_tanque_params)

    if @solicitud_tanque.save
      redirect_to @solicitud_tanque, notice: 'Solicitud tanque was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solicitud_tanques/1
  def update
    if @solicitud_tanque.update(solicitud_tanque_params)
      redirect_to @solicitud_tanque, notice: 'Solicitud tanque was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /solicitud_tanques/1
  def destroy
    @solicitud_tanque.destroy
    redirect_to solicitud_tanques_url, notice: 'Solicitud tanque was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_tanque
      @solicitud_tanque = SolicitudTanque.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_tanque_params
      params.require(:solicitud_tanque).permit(:id_solicitud, :tanque, :recipiente_a_presion, :espesor_cuerpo, :espesor_tapa, :espesor_diametro, :espesor_capacidad, :espesor_longitud_altura, :no_sold_circunferencia, :no_sold_longitud, :codigo_evaluacion)
    end
end

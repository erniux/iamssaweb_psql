class SolicitudServiciosController < ApplicationController
  before_action :set_solicitud_servicio, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /solicitud_servicios
  def index
    @solicitud_servicios = SolicitudServicio.all
  end

  # GET /solicitud_servicios/1
  def show
  end

  # GET /solicitud_servicios/new
  def new
    @solicitud_servicio = SolicitudServicio.new
  end

  # GET /solicitud_servicios/1/edit
  def edit
  end

  # POST /solicitud_servicios
  def create
    @solicitud_servicio = SolicitudServicio.new(solicitud_servicio_params)

    if @solicitud_servicio.save
      redirect_to @solicitud_servicio, notice: 'Solicitud servicio was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solicitud_servicios/1
  def update
    if @solicitud_servicio.update(solicitud_servicio_params)
      redirect_to @solicitud_servicio, notice: 'Solicitud servicio was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /solicitud_servicios/1
  def destroy
    @solicitud_servicio.destroy
    redirect_to solicitud_servicios_url, notice: 'Solicitud servicio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_servicio
      @solicitud_servicio = SolicitudServicio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_servicio_params
      params.require(:solicitud_servicio).permit(:id_servicio, :id_solicitud)
    end
end

class SolicitudTuberiaController < ApplicationController
  before_action :set_solicitud_tuberium, only: [:show, :edit, :update, :destroy]
  access user: :all, site_admin: :all

  def index
    @solicitud_tuberia = SolicitudTuberium.all
  end

  def show
  end

  def new
    @solicitud_tuberium = SolicitudTuberium.new
  end

  def edit
  end

  def create
    @solicitud_tuberium = SolicitudTuberium.new(solicitud_tuberium_params)

    if @solicitud_tuberium.save
      redirect_to @solicitud_tuberium, notice: 'Solicitud tuberium was successfully created.'
    else
      render :new
    end
  end

  def update
    if @solicitud_tuberium.update(solicitud_tuberium_params)
      redirect_to @solicitud_tuberium, notice: 'Solicitud tuberium was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @solicitud_tuberium.destroy
    redirect_to solicitud_tuberia_url, notice: 'Solicitud tuberium was successfully destroyed.'
  end

  private
    def set_solicitud_tuberium
      @solicitud_tuberium = SolicitudTuberium.find(params[:id])
    end

    def solicitud_tuberium_params
      params.require(:solicitud_tuberium).permit(:id_solicitud, :piso, :altura_piso, :codigo_evaluacion, 
                                                 :diametro, :no_uniones, :cve_cedula)
    end
end

class SolicitudTuberiaController < ApplicationController
  before_action :set_solicitud_tuberium, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /solicitud_tuberia
  def index
    @solicitud_tuberia = SolicitudTuberium.all
  end

  # GET /solicitud_tuberia/1
  def show
  end

  # GET /solicitud_tuberia/new
  def new
    @solicitud_tuberium = SolicitudTuberium.new
  end

  # GET /solicitud_tuberia/1/edit
  def edit
  end

  # POST /solicitud_tuberia
  def create
    @solicitud_tuberium = SolicitudTuberium.new(solicitud_tuberium_params)

    if @solicitud_tuberium.save
      redirect_to @solicitud_tuberium, notice: 'Solicitud tuberium was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solicitud_tuberia/1
  def update
    if @solicitud_tuberium.update(solicitud_tuberium_params)
      redirect_to @solicitud_tuberium, notice: 'Solicitud tuberium was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /solicitud_tuberia/1
  def destroy
    @solicitud_tuberium.destroy
    redirect_to solicitud_tuberia_url, notice: 'Solicitud tuberium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_tuberium
      @solicitud_tuberium = SolicitudTuberium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_tuberium_params
      params.require(:solicitud_tuberium).permit(:id_solicitud, :piso, :altura_piso, :codigo_evaluacion, :diametro, :no_uniones, :cve_cedula)
    end
end

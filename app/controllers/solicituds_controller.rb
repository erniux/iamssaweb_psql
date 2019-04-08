class SolicitudsController < ApplicationController
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]
  access user: :all, site_admin: :all

  # GET /solicituds
  def index
    @solicituds = Solicitud.all

  end

  def show
  end

  def new
    @solicitud = Solicitud.new
    @solicitud.solicitud_estructura.build
    @solicitud.solicitud_servicio.build
    @solicitud.solicitud_tanque.build
    @solicitud.solicitud_tuberium.build
  end

  def edit
  end

  def create
    @solicitud = Solicitud.new(solicitud_params)

    if @solicitud.save
      redirect_to @solicitud, notice: 'Solicitud was successfully created.'
    else
      render :new
    end
  end

  def update
    if @solicitud.update(solicitud_params)
      redirect_to @solicitud, notice: 'Solicitud was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @solicitud.destroy
    redirect_to solicituds_url, notice: 'Solicitud was successfully destroyed.'
  end

  private

    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
      @solicitud.solicitud_estructura.build
      @solicitud.solicitud_servicio.build
      @solicitud.solicitud_tanque.build
      @solicitud.solicitud_tuberium.build
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_params
      params.require(:solicitud).permit(:proyecto, :estatus, :comentarios, :user_id, :cliente_id, :cliente_contacto_id)
    end
end

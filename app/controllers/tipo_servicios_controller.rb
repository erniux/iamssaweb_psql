class TipoServiciosController < ApplicationController
  before_action :set_tipo_servicio, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /tipo_servicios
  def index
    @tipo_servicios = TipoServicio.all
  end

  # GET /tipo_servicios/1
  def show
  end

  # GET /tipo_servicios/new
  def new
    @tipo_servicio = TipoServicio.new
  end

  # GET /tipo_servicios/1/edit
  def edit
  end

  # POST /tipo_servicios
  def create
    @tipo_servicio = TipoServicio.new(tipo_servicio_params)

    if @tipo_servicio.save
      redirect_to @tipo_servicio, notice: 'Tipo servicio was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tipo_servicios/1
  def update
    if @tipo_servicio.update(tipo_servicio_params)
      redirect_to @tipo_servicio, notice: 'Tipo servicio was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tipo_servicios/1
  def destroy
    @tipo_servicio.destroy
    redirect_to tipo_servicios_url, notice: 'Tipo servicio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_servicio
      @tipo_servicio = TipoServicio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_servicio_params
      params.require(:tipo_servicio).permit(:cve_tipo_servicio, :detalle_servicio)
    end
end

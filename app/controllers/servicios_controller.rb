class ServiciosController < ApplicationController
  before_action :set_servicio, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /servicios
  def index
    @servicios = Servicio.all
  end

  # GET /servicios/1
  def show
  end

  # GET /servicios/new
  def new
    @servicio = Servicio.new
  end

  # GET /servicios/1/edit
  def edit
  end

  # POST /servicios
  def create
    @servicio = Servicio.new(servicio_params)

    if @servicio.save
      redirect_to @servicio, notice: 'Servicio was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /servicios/1
  def update
    if @servicio.update(servicio_params)
      redirect_to @servicio, notice: 'Servicio was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /servicios/1
  def destroy
    @servicio.destroy
    redirect_to servicios_url, notice: 'Servicio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio
      @servicio = Servicio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def servicio_params
      params.require(:servicio).permit(:concepto, :cantidad, :precio_a, :precio_b, :precio_c, :entidad, :material, :tipo_servicio)
    end
end

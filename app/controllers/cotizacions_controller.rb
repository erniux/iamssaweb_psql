class CotizacionsController < ApplicationController
  before_action :set_cotizacion, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /cotizacions
  def index
    @cotizacions = Cotizacion.all
  end

  # GET /cotizacions/1
  def show
  end

  # GET /cotizacions/new
  def new
    @cotizacion = Cotizacion.new
  end

  # GET /cotizacions/1/edit
  def edit
  end

  # POST /cotizacions
  def create
    @cotizacion = Cotizacion.new(cotizacion_params)

    if @cotizacion.save
      redirect_to @cotizacion, notice: 'Cotizacion was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cotizacions/1
  def update
    if @cotizacion.update(cotizacion_params)
      redirect_to @cotizacion, notice: 'Cotizacion was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cotizacions/1
  def destroy
    @cotizacion.destroy
    redirect_to cotizacions_url, notice: 'Cotizacion was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotizacion
      @cotizacion = Cotizacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cotizacion_params
      params.require(:cotizacion).permit(:num_cotizacion, :proyecto_id, :cliente_id, :solicitud_id)
    end
end

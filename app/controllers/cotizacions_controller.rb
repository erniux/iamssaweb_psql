class CotizacionsController < ApplicationController
  before_action :set_cotizacion, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  

  def index
    @cotizacions = Cotizacion.all
  end

  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /cotizacions/1
   

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
      redirect_to action: "index", notice: 'Cotización se ha guardado con éxito.'
    else
      render :new
    end
  end

  # PATCH/PUT /cotizacions/1
  def update
    if @cotizacion.update(cotizacion_params)
      redirect_to  action: "index", notice: 'Cotización se ha actualizado con éxito.'
    else
      render :edit
    end
  end

  # DELETE /cotizacions/1
  def destroy
    @cotizacion.destroy
    redirect_to cotizacions_url, notice: 'Cotización se ha eliminado con éxito.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotizacion
      @cotizacion = Cotizacion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cotizacion_params
      params.require(:cotizacion).permit(:num_cotizacion, :proyecto_id, :cliente_id, :solicitud_id,
        cotizacion_detalles_attributes: [:id, :num_partida, :servicio_id, :cantidad, :precio, :observaciones, :total, :_destroy] )
    end
end

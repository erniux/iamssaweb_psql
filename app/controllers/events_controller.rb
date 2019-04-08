class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  access user: :all, site_admin: :all

  def index
    @events = Event.where(start: params[:start]..params[:end])
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    @event.save
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :date_range, :start, :end, :color, :cancelada, :Cancelacion, :IdEntidad,
                                    :NoCotizacion, :FechaSalida, :FechaRegreso, :IdPersonalAutoriza, :IdPersonal,
                                    :Ubicacion, :EntregarResultados, :IdContactoSolicita, :IdContactoAtiende,
                                    :SegLentes, :SegCasco, :SegZapatos, :SegArnes, :SegTaponesAuditivos, :SegIMSS,
                                    :Obra, :IdEntidadDpto, :IdCiudad, :Unidad, :NoOTOrigen, :IdObra, :EntregarBorrador,
                                    :EntregarPeliculas)
    end
end

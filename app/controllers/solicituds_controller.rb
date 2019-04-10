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
    @solicitud.solicitud_servicio.build
    @solicitud.solicitud_estructura.build
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
    end

    # Only allow a trusted parameter "white list" through.
    def solicitud_params
      params.require(:solicitud).permit(:proyecto, :estatus, :comentarios, :user_id, :cliente_id, :cliente_contacto_id,
        solicitud_estructura_attributes: [:estructura, :columna_pr, :columna_hss_o_cajon, :columna_ptr_o_monten, :trabes_pr, 
                                          :trabes_ps, :trabes_angulo_con_ptr, :angulo_con_angulo, :ptr_con_ptr, :union_filete, 
                                          :union_a_tope, :espesor_columna, :espesor_trabe, :tiempo_fabricacion_montaje, 
                                          :toneladas],
        solicitud_tuberium_attributes:   [:piso, :altura, :piso, :codigo_evaluacion, :diametro, :no_uniones, :cve_cedula],  
        solicitud_tanque_attibutes:      [:tanque, :recipiente_a_presion, :espesor_cuerpo, :espesor_tapa, :espesor_diametro, 
                                          :espesor_capacidad, :espesor_longitud_altura, :no_sold_circunferencia, :no_sold_longitud, 
                                          :codigo_evaluacion], 
        solicitud_servicio_attributes:   [:servicio, :columna_pr, :torque, :vacio, :iris, :prueba_doblez, :prueba_pintura, 
                                          :doblez, :radiografia, :inspeccion_visual, :ultrasonido, :liquido_penetrante, 
                                          :part_magneticas, :supervicion, :calif_soldador, :calif_procedimiento, 
                                          :elab_procedimiento, :emision_procedimiento])
    end
end





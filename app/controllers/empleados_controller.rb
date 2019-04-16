class EmpleadosController < ApplicationController
  before_action :set_empleado, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /empleados
  def index
    @empleados = Empleado.all
  end

  # GET /empleados/1
  def show
  end

  # GET /empleados/new
  def new
    @empleado = Empleado.new
  end

  # GET /empleados/1/edit
  def edit
  end

  # POST /empleados
  def create
    @empleado = Empleado.new(empleado_params)

    if @empleado.save
      redirect_to @empleado, notice: 'Empleado was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /empleados/1
  def update
    if @empleado.update(empleado_params)
      redirect_to @empleado, notice: 'Empleado was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /empleados/1
  def destroy
    @empleado.destroy
    redirect_to empleados_url, notice: 'Empleado was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleado
      @empleado = Empleado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def empleado_params
      params.require(:empleado).permit(:NoCredencial, :Nombre, :Iniciales, :Direccion, :Colonia, :Poblacion, :Estado, 
                                       :CP, :Telefono, :Celular, :Nextel, :Radio, :Nacimiento, :Contratacion, :Puesto, 
                                       :Depto, :IdEntidad, :RFC, :CURP, :IMSS, :Licencia, :Tipo, :Exped, :Venc, :Licencia2, 
                                       :Tipo2, :Exped2, :Venc2, :RazonSocial, :Examinador, :Ocupacion, :Cedula, :Registro, 
                                       :Agudeza, :Jaeger, :Colores, :Grises, :UltExa, :Activo, :ProxExa, :Informar, 
                                       :Parentesco, :TelInformar, :GrupoSanguineo, :AlergiaMedicamento, :EnfCronicas)
    end
end

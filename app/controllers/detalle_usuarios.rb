class DetalleUsuariosController < ApplicationController
  before_action :set_detalle_userio, only: [:show, :edit, :update, :destroy]
  access user: :all, site_admin: :all

  def index
    @detalle_usuarios = DetalleUsuario.all
  end

  def show
  end

  def new
    @detalle_usuario = DetalleUsuario.new
  end

  def edit
  end

  def create
    @detalle_usuario = DetalleUsuario.new(detalle_usuario_params)

    if @detalle_usuario.save
      redirect_to @detalle_usuario, notice: 'Usuario Creado exitosamente.'
    else
      render :new
    end
  end

  def update
    if @detalle_usuario.update(detalle_usuario_params)
      redirect_to @detalle_usuario, notice: 'Usuario actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @detalle_usuario.destroy
    redirect_to detalle_usuario_url, notice: 'Usuario Eliminado Exitosamente.'
  end

  private
    def set_detalle_usuario
      @detalle_usuario = DetalleUsuario.find(params[:id])
    end

    def detalle_usuario_params
      params.require(:detalle_usuario).permit(:NoCredencial, :Nombre, :Iniciales, :Direccion, :Colonia, :Poblacion, :Estado, 
                                              :CP, :Telefono, :Celular, :Nextel, :Radio, :Nacimiento, :Contratacion, :Puesto, 
                                              :Depto, :IdEntidad, :RFC, :CURP, :IMSS, :Licencia, :Tipo, :Exped, :Venc, :Licencia2, 
                                              :Tipo2, :Exped2, :Venc2, :RazonSocial, :Examinador, :Ocupacion, :Cedula, :Registro, 
                                              :Agudeza, :Jaeger, :Colores, :Grises, :UltExa, :ProxExa, :Informar, :Parentesco, 
                                              :TelInformar, :GrupoSanguineo, :AlergiaMedicamento, :EnfCronicas, :Activo )
    end
end






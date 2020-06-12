class ProyectosController < ApplicationController
  before_action :set_proyecto, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /proyectos
  def index
    @proyectos = Proyecto.all
  end

  # GET /proyectos/1
  def show
  end

  # GET /proyectos/new
  def new
    @proyecto = Proyecto.new
  end

  # GET /proyectos/1/edit
  def edit
  end

  # POST /proyectos
  def create
    @proyecto = Proyecto.new(proyecto_params)

    if @proyecto.save
      redirect_to @proyecto, notice: 'Proyecto was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /proyectos/1
  def update
    if @proyecto.update(proyecto_params)
      redirect_to @proyecto, notice: 'Proyecto was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /proyectos/1
  def destroy
    @proyecto.destroy
    redirect_to proyectos_url, notice: 'Proyecto was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @proyecto = Proyecto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proyecto_params
      params.require(:proyecto).permit(:nombre_proyecto, :empresa, :responsable, :comentarios)
    end
end

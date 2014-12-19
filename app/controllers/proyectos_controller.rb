class ProyectosController < ApplicationController
  before_action :set_proyecto, only: [:show, :edit, :update, :destroy]

  # GET /proyectos
  # GET /proyectos.json
  def index
    @proyectos = Proyecto.all
	@personas = User.all
	@participantes = Participante.all
	#@roles = Rol.all
	@entradas = Entrada.all
	@roles = Rol.all
	@rol_responsable = @roles.find_by(nombre: "RESPONSABLE")
  end

  # GET /proyectos/1
  # GET /proyectos/1.json
  def show
  @tiempo_tot = @proyecto.entradas.map {|e| !e.tiempo.nil? ? e.tiempo : 0}.sum
  @participantes = Participante.find_by(proyecto_id: params[:id])
  end

  # GET /proyectos/new
  def new
    @proyecto = Proyecto.new
  end

  # GET /proyectos/1/edit
  def edit
  end

  # POST /proyectos
  # POST /proyectos.json
  def create
    @proyecto = Proyecto.new(proyecto_params)

    respond_to do |format|
      if @proyecto.save
        format.html { redirect_to @proyecto, notice: 'Proyecto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @proyecto }
      else
        format.html { render action: 'new' }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyectos/1
  # PATCH/PUT /proyectos/1.json
  def update
    respond_to do |format|
      if @proyecto.update(proyecto_params)
        format.html { redirect_to @proyecto, notice: 'Proyecto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyectos/1
  # DELETE /proyectos/1.json
  def destroy
    @proyecto.destroy
    respond_to do |format|
      format.html { redirect_to proyectos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @proyecto = Proyecto.find(params[:id])
	@tipos_ent = TipoEntrada.all
	@entradas_descripcion = @tipos_ent.find_by(nombre: "DESCRIPCION")
	@entradas_cierre = @tipos_ent.find_by(nombre: "CIERRE")
	
	#@rol_ = @tipos_ent.find_by(nombre: "CIERRE")	
	
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyecto_params
      params.require(:proyecto).permit(:nombre, :horas)
    end
end

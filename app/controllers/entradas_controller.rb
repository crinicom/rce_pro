class EntradasController < ApplicationController
  #before_action :set_entrada, only: [:show, :edit, :update, :destroy]
  #before_action :load_proyecto

  # GET /entradas
  # GET /entradas.json
  def index
    proyecto = Proyecto.find(params[:proyecto_id])
  
	@entradas = proyecto.entradas
	
	respond_to do |format|
		format.html #index.html.erb
		format.xml { render :xml => @entradas }
	end
	end
  
  # GET /entradas/1
  # GET /entradas/1.json
  def show
  proyecto = Proyecto.find(params[:proyecto_id])
  
	@entrada = proyecto.entradas.find(params[:id])
	
	respond_to do |format|
		format.html #index.html.erb
		format.xml { render :xml => @entrada }
	end
  end

  # GET /entradas/new
  def new
    #@entrada = Entrada.new
	proyecto = Proyecto.find(params[:proyecto_id])
  
	@entrada = proyecto.entradas.build
	
	respond_to do |format|
		format.html #index.html.erb
		format.xml { render :xml => @entrada }
	end
  end

  # GET /entradas/1/edit
  def edit
	proyecto = Proyecto.find(params[:proyecto_id])
  
	@entrada = proyecto.entradas.find(params[:id])
  end

  # POST /entradas
  # POST /entradas.json
  def create
    # original: @entrada = Entrada.new(entrada_params)
	proyecto = Proyecto.find(params[:proyecto_id])
	@entrada = proyecto.entradas.create(entrada_params)

	
    respond_to do |format|
      if @entrada.save
        format.html { redirect_to [@entrada.proyecto, @entrada], notice: 'Entrada was successfully created.' }
        format.json { render action: 'show', status: :created, location: [@entrada.proyecto,@entrada] }
      else
        format.html { render action: 'new' }
        format.json { render json: @entrada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entradas/1
  # PATCH/PUT /entradas/1.json
  def update
    
	proyecto = Proyecto.find(params[:proyecto_id])
  
	@entrada = proyecto.entradas.find(params[:id])
	
	respond_to do |format|
      if @entrada.update(entrada_params)
        format.html { redirect_to [@entrada.proyecto,@entrada], notice: 'Entrada was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entrada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entradas/1
  # DELETE /entradas/1.json
  def destroy
    #@entrada.destroy
	proyecto = Proyecto.find(params[:proyecto_id])
  
	@entrada = proyecto.entradas.find(params[:id])
	@entrada.destroy
    respond_to do |format|
      format.html { redirect_to proyecto_entradas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrada
      @entrada = Entrada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrada_params
      
	  params.require(:entrada).permit(:proyecto_id, :fecha_creacion,:persona_id,:tipo_entrada_id,:comentario,:tiempo)
    end
end

class ParticipantesController < ApplicationController
  before_action :set_participante, only: [:show, :edit, :update, :destroy]

  # GET /participantes
  # GET /participantes.json
  def index
    @participantes = Participante.all
  end

  # GET /participantes/1
  # GET /participantes/1.json
  def show
  end

  # GET /participantes/new
  def new
    @participante = Participante.new
	@personas = User.all
  end

  # GET /participantes/1/edit
  def edit
  end

  # POST /participantes
  # POST /participantes.json
  def create
    @participante = Participante.new(participante_params)
	#proyecto = Proyecto.find(params[:proyecto_id])
    respond_to do |format|
      if @participante.save
        format.html { redirect_to proyecto_url(participante_params[:proyecto_id]), notice: 'Participante was successfully created.' }
        format.json { render action: 'show', status: :created, location: @participante }
      else
        format.html { render action: 'new' }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participantes/1
  # PATCH/PUT /participantes/1.json
  def update
    respond_to do |format|
      if @participante.update(participante_params)
        format.html { redirect_to proyecto_url(params[:proyecto_id]), notice: 'Participante was successfully updated. #{params[:proyecto_id]}' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @participante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participantes/1
  # DELETE /participantes/1.json
  def destroy
    @participante.destroy
    respond_to do |format|
      format.html { redirect_to proyecto_url(params[:proyecto_id]) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participante
		#proyecto = Proyecto.find(params[:proyecto_id])
		@participante = Participante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participante_params
      
	  params.require(:participante).permit(:proyecto_id, :persona_id,:rol_id)
    end
end

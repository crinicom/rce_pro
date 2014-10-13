class TipoEntradasController < ApplicationController
  before_action :set_tipo_entrada, only: [:show, :edit, :update, :destroy]

  # GET /tipo_entradas
  # GET /tipo_entradas.json
  def index
    @tipo_entradas = TipoEntrada.all
  end

  # GET /tipo_entradas/1
  # GET /tipo_entradas/1.json
  def show
  end

  # GET /tipo_entradas/new
  def new
    @tipo_entrada = TipoEntrada.new
  end

  # GET /tipo_entradas/1/edit
  def edit
  end

  # POST /tipo_entradas
  # POST /tipo_entradas.json
  def create
    @tipo_entrada = TipoEntrada.new(tipo_entrada_params)

    respond_to do |format|
      if @tipo_entrada.save
        format.html { redirect_to @tipo_entrada, notice: 'Tipo entrada was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_entrada }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_entrada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_entradas/1
  # PATCH/PUT /tipo_entradas/1.json
  def update
    respond_to do |format|
      if @tipo_entrada.update(tipo_entrada_params)
        format.html { redirect_to @tipo_entrada, notice: 'Tipo entrada was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_entrada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_entradas/1
  # DELETE /tipo_entradas/1.json
  def destroy
    @tipo_entrada.destroy
    respond_to do |format|
      format.html { redirect_to tipo_entradas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_entrada
      @tipo_entrada = TipoEntrada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_entrada_params
      params[:tipo_entrada]
    end
end

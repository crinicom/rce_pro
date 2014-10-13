class HitosController < ApplicationController
  before_action :set_hito, only: [:show, :edit, :update, :destroy]

  # GET /hitos
  # GET /hitos.json
  def index
    @hitos = Hito.all
  end

  # GET /hitos/1
  # GET /hitos/1.json
  def show
  end

  # GET /hitos/new
  def new
    @hito = Hito.new
  end

  # GET /hitos/1/edit
  def edit
  end

  # POST /hitos
  # POST /hitos.json
  def create
    @hito = Hito.new(hito_params)

    respond_to do |format|
      if @hito.save
        format.html { redirect_to @hito, notice: 'Hito was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hito }
      else
        format.html { render action: 'new' }
        format.json { render json: @hito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hitos/1
  # PATCH/PUT /hitos/1.json
  def update
    respond_to do |format|
      if @hito.update(hito_params)
        format.html { redirect_to @hito, notice: 'Hito was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hitos/1
  # DELETE /hitos/1.json
  def destroy
    @hito.destroy
    respond_to do |format|
      format.html { redirect_to hitos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hito
      @hito = Hito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hito_params
      params[:hito]
    end
end

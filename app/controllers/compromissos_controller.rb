class CompromissosController < ApplicationController
  before_action :set_compromisso, only: [:show, :edit, :update, :destroy]

  # GET /compromissos
  # GET /compromissos.json
  def index
    @compromissos = Compromisso.all
    @date = Date.today
  end

  # GET /compromissos/1
  # GET /compromissos/1.json
  def show
  end

  # GET /compromissos/new
  def new
    @compromisso = Compromisso.new
  end

  # GET /compromissos/1/edit
  def edit
  end

  # POST /compromissos
  # POST /compromissos.json
  def create
    @compromisso = Compromisso.new(compromisso_params)

    respond_to do |format|
      if @compromisso.save
        format.html { redirect_to @compromisso, notice: 'Compromisso was successfully created.' }
        format.json { render action: 'show', status: :created, location: @compromisso }
      else
        format.html { render action: 'new' }
        format.json { render json: @compromisso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compromissos/1
  # PATCH/PUT /compromissos/1.json
  def update
    respond_to do |format|
      if @compromisso.update(compromisso_params)
        format.html { redirect_to @compromisso, notice: 'Compromisso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @compromisso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compromissos/1
  # DELETE /compromissos/1.json
  def destroy
    @compromisso.destroy
    respond_to do |format|
      format.html { redirect_to compromissos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compromisso
      @compromisso = Compromisso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compromisso_params
      params.require(:compromisso).permit(:titulo, :texto, :date)
    end
end

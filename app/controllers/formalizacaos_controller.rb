class FormalizacaosController < ApplicationController
  before_action :set_formalizacao, only: [:show, :edit, :update, :destroy]

  # GET /formalizacaos
  # GET /formalizacaos.json
  def index
    @formalizacaos = Formalizacao.all
  end

  # GET /formalizacaos/1
  # GET /formalizacaos/1.json
  def show
  end

  # GET /formalizacaos/new
  def new
    @formalizacao = Formalizacao.new
  end

  # GET /formalizacaos/1/edit
  def edit
  end

  # POST /formalizacaos
  # POST /formalizacaos.json
  def create
    @formalizacao = Formalizacao.new(formalizacao_params)

    respond_to do |format|
      if @formalizacao.save
        format.html { redirect_to @formalizacao, notice: 'Formalizacao was successfully created.' }
        format.json { render :show, status: :created, location: @formalizacao }
      else
        format.html { render :new }
        format.json { render json: @formalizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formalizacaos/1
  # PATCH/PUT /formalizacaos/1.json
  def update
    respond_to do |format|
      if @formalizacao.update(formalizacao_params)
        format.html { redirect_to @formalizacao, notice: 'Formalizacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @formalizacao }
      else
        format.html { render :edit }
        format.json { render json: @formalizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formalizacaos/1
  # DELETE /formalizacaos/1.json
  def destroy
    @formalizacao.destroy
    respond_to do |format|
      format.html { redirect_to formalizacaos_url, notice: 'Formalizacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formalizacao
      @formalizacao = Formalizacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formalizacao_params
      params.require(:formalizacao).permit(:tema, :justificativa, :validacao, :motivo, :data, :aluno_id)
    end
end

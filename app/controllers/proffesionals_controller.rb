class ProffesionalsController < ApplicationController
  before_action :set_proffesional, only: %i[ show edit update destroy ]

  # GET /proffesionals or /proffesionals.json
  def index
    @proffesionals = Proffesional.all
  end

  # GET /proffesionals/1 or /proffesionals/1.json
  def show
  end

  # GET /proffesionals/new
  def new
    @proffesional = Proffesional.new
  end

  # GET /proffesionals/1/edit
  def edit
  end

  # POST /proffesionals or /proffesionals.json
  def create
    @proffesional = Proffesional.new(proffesional_params)

    respond_to do |format|
      if @proffesional.save
        format.html { redirect_to proffesional_url(@proffesional), notice: "Proffesional was successfully created." }
        format.json { render :show, status: :created, location: @proffesional }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proffesional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proffesionals/1 or /proffesionals/1.json
  def update
    respond_to do |format|
      if @proffesional.update(proffesional_params)
        format.html { redirect_to proffesional_url(@proffesional), notice: "Proffesional was successfully updated." }
        format.json { render :show, status: :ok, location: @proffesional }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proffesional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proffesionals/1 or /proffesionals/1.json
  def destroy
    @proffesional.destroy

    respond_to do |format|
      format.html { redirect_to proffesionals_url, notice: "Proffesional was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proffesional
      @proffesional = Proffesional.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proffesional_params
      params.require(:proffesional).permit(:name, :industry, :description, :proj_avail, :class_eng, :student_exp, :teacher_mentor)
    end
end

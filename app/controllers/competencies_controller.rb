class CompetenciesController < ApplicationController
  include Pundit::Authorization

  #before_action :set_competency, only: %i[ show edit update destroy ]
  #before_action :authenticate_user!, except: [:index, :show]
  #before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /competencies or /competencies.json
  def index
    @competencies = Competency.order(params[:sort])
  end

  # GET /competencies/1 or /competencies/1.json
  def show
  end

  # GET /competencies/new
  def new
    #@competency = Competency.new
    @competency = current_user.competencies.build
  end

  # GET /competencies/1/edit
  def edit
  end

  # POST /competencies or /competencies.json
  def create
    #@competency = Competency.new(competency_params)
    @competency = current_user.competencies.build(competency_params)

    respond_to do |format|
      if @competency.save
        format.html { redirect_to competency_url(@competency), notice: "Competency was successfully created." }
        format.json { render :show, status: :created, location: @competency }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competencies/1 or /competencies/1.json
  def update
    respond_to do |format|
      if @competency.update(competency_params)
        format.html { redirect_to competency_url(@competency), notice: "Competency was successfully updated." }
        format.json { render :show, status: :ok, location: @competency }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competencies/1 or /competencies/1.json
  def destroy
    @competency.destroy

    respond_to do |format|
      format.html { redirect_to competencies_url, notice: "Competency was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @competency = current_user.competencies.find_by(id: params[:id])
    redirect_to competencies_path, notice: "Not Authorized To Edit This Competency DUDE!" if @competency.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competency
      @competency = Competency.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def competency_params
      params.require(:competency).permit(:name, :short_desc, :long_desc, :industry, :primary_class, :secondary_class, :mastery1, :mastery2, :mastery3, :owner, :user_id)
    end
end

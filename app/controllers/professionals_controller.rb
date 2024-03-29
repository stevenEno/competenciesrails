class ProfessionalsController < ApplicationController
  include Pundit::Authorization

  before_action :set_professional, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /professionals or /professionals.json
  def index
    @professionals = Professional.all
  end

  # GET /professionals/1 or /professionals/1.json
  def show
    @professional = Professional.find(params[:id])
  end

  # Email
  def connect_email
    @professional = Professional.find(params[:id])
    @user = current_user
    ConnectMailer.connect_email(user: @user, professional: @professional).deliver_now
    respond_to do |format|
      format.html { redirect_to professional_url(@professional), notice: 'Email sent' }
      format.js { render :nothing => true }
    end
  end

  # GET /professionals/new
  def new
    @professional = Professional.new
    @users = User.all
  end

  # GET /professionals/1/edit
  def edit
    @professional = Professional.find(params[:id])
    @users = User.all
  end

  # PATCH /professionals/modify_relationship
  def modify_relationship
    @professional = Professional.find(params[:id])
    if @professional.update(relationship_points: @professional.relationship_points = params[:professional][:relationship_points].to_i)
      redirect_to home_index_path, notice: "Relationship was successfully modified."
    else
      redirect_to home_index_path, alert: "Error modifying relationship."
    end
  end

  # POST /professionals or /professionals.json
  def create
    authorize Professional, :create?
    @professional = Professional.new(professional_params)

    respond_to do |format|
      if @professional.save
        format.html { redirect_to professional_url(@professional), notice: "Professional was successfully created." }
        format.json { render :show, status: :created, location: @professional }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @professional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professionals/1 or /professionals/1.json
  def update
    respond_to do |format|
      if @professional.update(professional_params)
        format.html { redirect_to professional_url(@professional), notice: "Professional was successfully updated." }
        format.json { render :show, status: :ok, location: @professional }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @professional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professionals/1 or /professionals/1.json
  def destroy
    @professional = Professional.find(params[:id])
    authorize @professional, :destroy?
    @professional.destroy

    respond_to do |format|
      format.html { redirect_to professionals_url, notice: "Professional was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional
      @professional = Professional.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def professional_params
      params.require(:professional).permit(:name, :organization, :occupation, :user_id, :email, :field_trip, :class_speaker, :lunch, :job_shadow, :career_fair,
                                            :mentorship, :proj_pitch, :proj_consult, :proj_collab, :student_wbl, :externship, :description, :linked_in, 
                                            :relationship_points, :avatar, :rating, :is_currently_available, :skill_1, :skill_2, :skill_3, :skill_4, :skill_5 )
    end
end

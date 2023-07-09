class DietProfilesController < ApplicationController
  before_action :set_diet_profile, only: %i[ show edit update destroy ]

  # GET /diet_profiles or /diet_profiles.json
  def index
    @diet_profiles = DietProfile.all
  end

  # GET /diet_profiles/1 or /diet_profiles/1.json
  def show
  end

  # GET /diet_profiles/new
  def new
    @diet_profile = DietProfile.new
  end

  # GET /diet_profiles/1/edit
  def edit
  end

  # POST /diet_profiles or /diet_profiles.json
  def create
    @diet_profile = DietProfile.new(diet_profile_params)

    respond_to do |format|
      if @diet_profile.save
        format.html { redirect_to diet_profile_url(@diet_profile), notice: "Diet profile was successfully created." }
        format.json { render :show, status: :created, location: @diet_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diet_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diet_profiles/1 or /diet_profiles/1.json
  def update
    respond_to do |format|
      if @diet_profile.update(diet_profile_params)
        format.html { redirect_to diet_profile_url(@diet_profile), notice: "Diet profile was successfully updated." }
        format.json { render :show, status: :ok, location: @diet_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diet_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diet_profiles/1 or /diet_profiles/1.json
  def destroy
    @diet_profile.destroy

    respond_to do |format|
      format.html { redirect_to diet_profiles_url, notice: "Diet profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet_profile
      @diet_profile = DietProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diet_profile_params
      params.require(:diet_profile).permit(:user_id, :developer_id, :restrictions, :favorites, :allergies, :likes, :dislikes)
    end
end

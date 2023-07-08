class PairingsController < ApplicationController
  before_action :set_pairing, only: %i[ show edit update destroy ]

  # GET /pairings or /pairings.json
  def index
    @pairings = Pairing.all
  end

  # GET /pairings/1 or /pairings/1.json
  def show
  end

  # GET /pairings/new
  def new
    @pairing = Pairing.new
  end

  # GET /pairings/1/edit
  def edit
  end

  # POST /pairings or /pairings.json
  def create
    @pairing = Pairing.new(pairing_params)

    respond_to do |format|
      if @pairing.save
        format.html { redirect_to pairing_url(@pairing), notice: "Pairing was successfully created." }
        format.json { render :show, status: :created, location: @pairing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pairing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pairings/1 or /pairings/1.json
  def update
    respond_to do |format|
      if @pairing.update(pairing_params)
        format.html { redirect_to pairing_url(@pairing), notice: "Pairing was successfully updated." }
        format.json { render :show, status: :ok, location: @pairing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pairing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pairings/1 or /pairings/1.json
  def destroy
    @pairing.destroy

    respond_to do |format|
      format.html { redirect_to pairings_url, notice: "Pairing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pairing
      @pairing = Pairing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pairing_params
      params.require(:pairing).permit(:developer1_id, :developer2_id, :manager_id, :user_id, :sprint_id, :kudos_id)
    end
end

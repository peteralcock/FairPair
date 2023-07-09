class PtoRequestsController < ApplicationController
  before_action :set_pto_request, only: %i[ show edit update destroy ]

  # GET /pto_requests or /pto_requests.json
  def index
    @pto_requests = PtoRequest.all
  end

  # GET /pto_requests/1 or /pto_requests/1.json
  def show
  end

  # GET /pto_requests/new
  def new
    @pto_request = PtoRequest.new
  end

  # GET /pto_requests/1/edit
  def edit
  end

  # POST /pto_requests or /pto_requests.json
  def create
    @pto_request = PtoRequest.new(pto_request_params)

    respond_to do |format|
      if @pto_request.save
        format.html { redirect_to pto_request_url(@pto_request), notice: "Pto request was successfully created." }
        format.json { render :show, status: :created, location: @pto_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pto_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pto_requests/1 or /pto_requests/1.json
  def update
    respond_to do |format|
      if @pto_request.update(pto_request_params)
        format.html { redirect_to pto_request_url(@pto_request), notice: "Pto request was successfully updated." }
        format.json { render :show, status: :ok, location: @pto_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pto_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pto_requests/1 or /pto_requests/1.json
  def destroy
    @pto_request.destroy

    respond_to do |format|
      format.html { redirect_to pto_requests_url, notice: "Pto request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pto_request
      @pto_request = PtoRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pto_request_params
      params.require(:pto_request).permit(:start_date, :end_date, :developer_id, :status, :approved_at, :manager_id, :note)
    end
end

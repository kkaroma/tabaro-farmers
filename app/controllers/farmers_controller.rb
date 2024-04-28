class FarmersController < ApplicationController
  before_action :set_farmer, only: %i[ show edit update destroy ]

  # GET /farmers or /farmers.json
  def index
    @farmers = Farmer.all
  end

  # GET /farmers/1 or /farmers/1.json
  def show
  end

  # GET /farmers/new
  def new
    @farmer = Farmer.new
  end

  # GET /farmers/1/edit
  def edit
  end

  # POST /farmers or /farmers.json
  def create
    @farmer = Farmer.new(farmer_params)

    respond_to do |format|
      if @farmer.save
        format.html { redirect_to farmer_url(@farmer), notice: "Farmer was successfully created." }
        format.json { render :show, status: :created, location: @farmer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @farmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farmers/1 or /farmers/1.json
  def update
    respond_to do |format|
      if @farmer.update(farmer_params)
        format.html { redirect_to farmer_url(@farmer), notice: "Farmer was successfully updated." }
        format.json { render :show, status: :ok, location: @farmer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @farmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmers/1 or /farmers/1.json
  def destroy
    @farmer.destroy!

    respond_to do |format|
      format.html { redirect_to farmers_url, notice: "Farmer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farmer
      @farmer = Farmer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def farmer_params
      params.require(:farmer).permit(:name, :code, :nida, :village_id, :parish_id, :phone, :field_name, :crop, :acre, :tree, :date_planted, :est_yield, :last_chemical, :organic, :field_name2, :crop2, :acre2, :tree2, :date_planted2, :est_yield2, :last_used_chemical2, :organic2, :field_name3, :crop3, :acre3, :tree3, :date_planted3, :est_yield3, :last_used_chemical3, :organic3)
    end
end

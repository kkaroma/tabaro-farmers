class AnnualCropsController < ApplicationController
  before_action :set_annual_crop, only: %i[ show edit update destroy ]

  # GET /annual_crops or /annual_crops.json
  def index
    @annual_crops = AnnualCrop.all
  end

  # GET /annual_crops/1 or /annual_crops/1.json
  def show
  end

  # GET /annual_crops/new
  def new
    @annual_crop = AnnualCrop.new
  end

  # GET /annual_crops/1/edit
  def edit
  end

  # POST /annual_crops or /annual_crops.json
  def create
    @annual_crop = AnnualCrop.new(annual_crop_params)

    respond_to do |format|
      if @annual_crop.save
        format.html { redirect_to annual_crop_url(@annual_crop), notice: "Annual crop was successfully created." }
        format.json { render :show, status: :created, location: @annual_crop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @annual_crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annual_crops/1 or /annual_crops/1.json
  def update
    respond_to do |format|
      if @annual_crop.update(annual_crop_params)
        format.html { redirect_to annual_crop_url(@annual_crop), notice: "Annual crop was successfully updated." }
        format.json { render :show, status: :ok, location: @annual_crop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @annual_crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annual_crops/1 or /annual_crops/1.json
  def destroy
    @annual_crop.destroy!

    respond_to do |format|
      format.html { redirect_to annual_crops_url, notice: "Annual crop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_crop
      @annual_crop = AnnualCrop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def annual_crop_params
      params.require(:annual_crop).permit(:annual_crop_field, :anual_crop_acre, :annual_crop_this_year, :annual_crop_organic, :annual_crop_last_year, :annual_crop_last_year_organic, :annual_crop_two_years_ago, :annual_crop_two_years_ago_organic)
    end
end

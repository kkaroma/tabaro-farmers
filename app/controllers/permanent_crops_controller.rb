class PermanentCropsController < ApplicationController
  before_action :set_permanent_crop, only: %i[ show edit update destroy ]

  # GET /permanent_crops or /permanent_crops.json
  def index
    @permanent_crops = PermanentCrop.all
  end

  # GET /permanent_crops/1 or /permanent_crops/1.json
  def show
  end

  # GET /permanent_crops/new
  def new
    @permanent_crop = PermanentCrop.new
  end

  # GET /permanent_crops/1/edit
  def edit
  end

  # POST /permanent_crops or /permanent_crops.json
  def create
    @permanent_crop = PermanentCrop.new(permanent_crop_params)

    respond_to do |format|
      if @permanent_crop.save
        format.html { redirect_to permanent_crop_url(@permanent_crop), notice: "Permanent crop was successfully created." }
        format.json { render :show, status: :created, location: @permanent_crop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @permanent_crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permanent_crops/1 or /permanent_crops/1.json
  def update
    respond_to do |format|
      if @permanent_crop.update(permanent_crop_params)
        format.html { redirect_to permanent_crop_url(@permanent_crop), notice: "Permanent crop was successfully updated." }
        format.json { render :show, status: :ok, location: @permanent_crop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @permanent_crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permanent_crops/1 or /permanent_crops/1.json
  def destroy
    @permanent_crop.destroy!

    respond_to do |format|
      format.html { redirect_to permanent_crops_url, notice: "Permanent crop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permanent_crop
      @permanent_crop = PermanentCrop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def permanent_crop_params
      params.require(:permanent_crop).permit(:field_name, :crop_id, :acres, :number_of_trees, :date_planted, :estimated_yield, :last_chemical, :organic)
    end
end

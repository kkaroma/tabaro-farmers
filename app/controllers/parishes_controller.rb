class ParishesController < ApplicationController
  before_action :set_parish, only: %i[ show edit update destroy ]

  # GET /parishes or /parishes.json
  def index
    @parishes = Parish.all
  end

  # GET /parishes/1 or /parishes/1.json
  def show
  end

  # GET /parishes/new
  def new
    @parish = Parish.new
  end

  # GET /parishes/1/edit
  def edit
  end

  # POST /parishes or /parishes.json
  def create
    @parish = Parish.new(parish_params)

    respond_to do |format|
      if @parish.save
        format.html { redirect_to parish_url(@parish), notice: "Parish was successfully created." }
        format.json { render :show, status: :created, location: @parish }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parishes/1 or /parishes/1.json
  def update
    respond_to do |format|
      if @parish.update(parish_params)
        format.html { redirect_to parish_url(@parish), notice: "Parish was successfully updated." }
        format.json { render :show, status: :ok, location: @parish }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parishes/1 or /parishes/1.json
  def destroy
    @parish.destroy!

    respond_to do |format|
      format.html { redirect_to parishes_url, notice: "Parish was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parish
      @parish = Parish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parish_params
      params.require(:parish).permit(:name)
    end
end

class GardenCropsController < ApplicationController
  before_action :set_garden_crop, only: [:show, :edit, :update, :destroy]

  # GET /garden_crops
  # GET /garden_crops.json
  def index
    @garden_crops = GardenCrop.all
  end

  # GET /garden_crops/1
  # GET /garden_crops/1.json
  def show
  end

  # GET /garden_crops/new
  def new
    @garden_crop = GardenCrop.new
  end

  # GET /garden_crops/1/edit
  def edit
  end

  # POST /garden_crops
  # POST /garden_crops.json
  def create
    @garden_crop = GardenCrop.new(garden_crop_params)

    respond_to do |format|
      if @garden_crop.save
        format.html { redirect_to @garden_crop, notice: 'Garden crop was successfully created.' }
        format.json { render :show, status: :created, location: @garden_crop }
      else
        format.html { render :new }
        format.json { render json: @garden_crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garden_crops/1
  # PATCH/PUT /garden_crops/1.json
  def update
    respond_to do |format|
      if @garden_crop.update(garden_crop_params)
        format.html { redirect_to @garden_crop, notice: 'Garden crop was successfully updated.' }
        format.json { render :show, status: :ok, location: @garden_crop }
      else
        format.html { render :edit }
        format.json { render json: @garden_crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garden_crops/1
  # DELETE /garden_crops/1.json
  def destroy
    @garden_crop.destroy
    respond_to do |format|
      format.html { redirect_to garden_crops_url, notice: 'Garden crop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden_crop
      @garden_crop = GardenCrop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garden_crop_params
      params.require(:garden_crop).permit(:GardenName, :CropName, :DateHarvested, :PoundsHarvested)
    end
end

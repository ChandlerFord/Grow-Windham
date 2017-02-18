class CropNamesController < ApplicationController
  before_action :set_crop_name, only: [:show, :edit, :update, :destroy]

  # GET /crop_names
  # GET /crop_names.json
  def index
    @crop_names = CropName.all
  end

  # GET /crop_names/1
  # GET /crop_names/1.json
  def show
  end

  # GET /crop_names/new
  def new
    @crop_name = CropName.new
  end

  # GET /crop_names/1/edit
  def edit
  end

  # POST /crop_names
  # POST /crop_names.json
  def create
    @crop_name = CropName.new(crop_name_params)

    respond_to do |format|
      if @crop_name.save
        format.html { redirect_to @crop_name, notice: 'Crop name was successfully created.' }
        format.json { render :show, status: :created, location: @crop_name }
      else
        format.html { render :new }
        format.json { render json: @crop_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crop_names/1
  # PATCH/PUT /crop_names/1.json
  def update
    respond_to do |format|
      if @crop_name.update(crop_name_params)
        format.html { redirect_to @crop_name, notice: 'Crop name was successfully updated.' }
        format.json { render :show, status: :ok, location: @crop_name }
      else
        format.html { render :edit }
        format.json { render json: @crop_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crop_names/1
  # DELETE /crop_names/1.json
  def destroy
    @crop_name.destroy
    respond_to do |format|
      format.html { redirect_to crop_names_url, notice: 'Crop name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crop_name
      @crop_name = CropName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crop_name_params
      params.require(:crop_name).permit(:CropName)
    end
end

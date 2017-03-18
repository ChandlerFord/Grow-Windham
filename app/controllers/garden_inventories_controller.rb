class GardenInventoriesController < ApplicationController
  before_action :set_garden_inventory, only: [:show, :edit, :update, :destroy]

  # GET /garden_inventories
  # GET /garden_inventories.json
  def index
    @garden_inventories = GardenInventory.all
  end

  # GET /garden_inventories/1
  # GET /garden_inventories/1.json
  def show
  end

  # GET /garden_inventories/new
  def new
    @garden_inventory = GardenInventory.new
    @tool_names = ToolName.all
    @gardens = Garden.all
  end

  # GET /garden_inventories/1/edit
  def edit
    @tool_names = ToolName.all
    @gardens = Garden.all
  end

  # POST /garden_inventories
  # POST /garden_inventories.json
  def create
    @garden_inventory = GardenInventory.new(garden_inventory_params)

    respond_to do |format|
      if @garden_inventory.save
        format.html { redirect_to @garden_inventory, notice: 'Garden inventory was successfully created.' }
        format.json { render :show, status: :created, location: @garden_inventory }
      else
        format.html { render :new }
        format.json { render json: @garden_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garden_inventories/1
  # PATCH/PUT /garden_inventories/1.json
  def update
    respond_to do |format|
      if @garden_inventory.update(garden_inventory_params)
        format.html { redirect_to @garden_inventory, notice: 'Garden inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @garden_inventory }
      else
        format.html { render :edit }
        format.json { render json: @garden_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garden_inventories/1
  # DELETE /garden_inventories/1.json
  def destroy
    @garden_inventory.destroy
    respond_to do |format|
      format.html { redirect_to garden_inventories_url, notice: 'Garden inventory was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden_inventory
      @garden_inventory = GardenInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garden_inventory_params
      params.require(:garden_inventory).permit(:GardenName, :ToolName, :Count)
    end
end

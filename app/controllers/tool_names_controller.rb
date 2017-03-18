class ToolNamesController < ApplicationController
  before_action :set_tool_name, only: [:show, :edit, :update, :destroy]

  # GET /tool_names
  # GET /tool_names.json
  def index
    @tool_names = ToolName.all
  end

  # GET /tool_names/1
  # GET /tool_names/1.json
  def show
  end

  # GET /tool_names/new
  def new
    @tool_name = ToolName.new
  end

  # GET /tool_names/1/edit
  def edit
  end

  # POST /tool_names
  # POST /tool_names.json
  def create
    @tool_name = ToolName.new(tool_name_params)

    respond_to do |format|
      if @tool_name.save
        format.html { redirect_to @tool_name, notice: 'Tool name was successfully created.' }
        format.json { render :show, status: :created, location: @tool_name }
      else
        format.html { render :new }
        format.json { render json: @tool_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tool_names/1
  # PATCH/PUT /tool_names/1.json
  def update
    respond_to do |format|
      if @tool_name.update(tool_name_params)
        format.html { redirect_to @tool_name, notice: 'Tool name was successfully updated.' }
        format.json { render :show, status: :ok, location: @tool_name }
      else
        format.html { render :edit }
        format.json { render json: @tool_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tool_names/1
  # DELETE /tool_names/1.json
  def destroy
    @tool_name.destroy
    respond_to do |format|
      format.html { redirect_to tool_names_url, notice: 'Tool name was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tool_name
      @tool_name = ToolName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tool_name_params
      params.require(:tool_name).permit(:ToolName, :Description)
    end
end

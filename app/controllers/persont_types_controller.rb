class PersontTypesController < ApplicationController
  before_action :set_persont_type, only: [:show, :edit, :update, :destroy]

  # GET /persont_types
  # GET /persont_types.json
  def index
    @persont_types = PersontType.all
  end

  # GET /persont_types/1
  # GET /persont_types/1.json
  def show
  end

  # GET /persont_types/new
  def new
    @persont_type = PersontType.new
  end

  # GET /persont_types/1/edit
  def edit
  end

  # POST /persont_types
  # POST /persont_types.json
  def create
    @persont_type = PersontType.new(persont_type_params)

    respond_to do |format|
      if @persont_type.save
        format.html { redirect_to @persont_type, notice: 'Persont type was successfully created.' }
        format.json { render :show, status: :created, location: @persont_type }
      else
        format.html { render :new }
        format.json { render json: @persont_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persont_types/1
  # PATCH/PUT /persont_types/1.json
  def update
    respond_to do |format|
      if @persont_type.update(persont_type_params)
        format.html { redirect_to @persont_type, notice: 'Persont type was successfully updated.' }
        format.json { render :show, status: :ok, location: @persont_type }
      else
        format.html { render :edit }
        format.json { render json: @persont_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persont_types/1
  # DELETE /persont_types/1.json
  def destroy
    @persont_type.destroy
    respond_to do |format|
      format.html { redirect_to persont_types_url, notice: 'Persont type was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persont_type
      @persont_type = PersontType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persont_type_params
      params.require(:persont_type).permit(:PersonType, :PersonTypeDescription)
    end
end

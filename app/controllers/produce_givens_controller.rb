class ProduceGivensController < ApplicationController
  before_action :set_produce_given, only: [:show, :edit, :update, :destroy]

  # GET /produce_givens
  # GET /produce_givens.json
  def index
    @produce_givens = ProduceGiven.all
  end

  # GET /produce_givens/1
  # GET /produce_givens/1.json
  def show
  end

  # GET /produce_givens/new
  def new
    @produce_given = ProduceGiven.new
    @crop_names = CropName.all
    @how_givens = HowGiven.all
  end

  # GET /produce_givens/1/edit
  def edit
    @crop_names = CropName.all
    @how_givens = HowGiven.all
  end

  # POST /produce_givens
  # POST /produce_givens.json
  def create
    @produce_given = ProduceGiven.new(produce_given_params)

    respond_to do |format|
      if @produce_given.save
        format.html { redirect_to @produce_given, notice: 'Produce given was successfully created.' }
        format.json { render :show, status: :created, location: @produce_given }
      else
        format.html { render :new }
        format.json { render json: @produce_given.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produce_givens/1
  # PATCH/PUT /produce_givens/1.json
  def update
    respond_to do |format|
      if @produce_given.update(produce_given_params)
        format.html { redirect_to @produce_given, notice: 'Produce given was successfully updated.' }
        format.json { render :show, status: :ok, location: @produce_given }
      else
        format.html { render :edit }
        format.json { render json: @produce_given.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produce_givens/1
  # DELETE /produce_givens/1.json
  def destroy
    @produce_given.destroy
    respond_to do |format|
      format.html { redirect_to produce_givens_url, notice: 'Produce given was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produce_given
      @produce_given = ProduceGiven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produce_given_params
      params.require(:produce_given).permit(:CropName, :DateGive, :HowGiven, :PoundsGiven, :ValueGiven)
    end
end

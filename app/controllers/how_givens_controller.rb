class HowGivensController < ApplicationController
  before_action :set_how_given, only: [:show, :edit, :update, :destroy]

  # GET /how_givens
  # GET /how_givens.json
  def index
    @how_givens = HowGiven.all
  end

  # GET /how_givens/1
  # GET /how_givens/1.json
  def show
  end

  # GET /how_givens/new
  def new
    @how_given = HowGiven.new
  end

  # GET /how_givens/1/edit
  def edit
  end

  # POST /how_givens
  # POST /how_givens.json
  def create
    @how_given = HowGiven.new(how_given_params)

    respond_to do |format|
      if @how_given.save
        format.html { redirect_to @how_given, notice: 'How given was successfully created.' }
        format.json { render :show, status: :created, location: @how_given }
      else
        format.html { render :new }
        format.json { render json: @how_given.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /how_givens/1
  # PATCH/PUT /how_givens/1.json
  def update
    respond_to do |format|
      if @how_given.update(how_given_params)
        format.html { redirect_to @how_given, notice: 'How given was successfully updated.' }
        format.json { render :show, status: :ok, location: @how_given }
      else
        format.html { render :edit }
        format.json { render json: @how_given.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /how_givens/1
  # DELETE /how_givens/1.json
  def destroy
    @how_given.destroy
    respond_to do |format|
      format.html { redirect_to how_givens_url, notice: 'How given was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_how_given
      @how_given = HowGiven.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def how_given_params
      params.require(:how_given).permit(:HowGiven, :HowGivenDescription)
    end
end

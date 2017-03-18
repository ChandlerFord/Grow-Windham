class PeoplePersonTypesController < ApplicationController
  before_action :set_people_person_type, only: [:show, :edit, :update, :destroy]

  # GET /people_person_types
  # GET /people_person_types.json
  def index
    @people_person_types = PeoplePersonType.all
  end

  # GET /people_person_types/1
  # GET /people_person_types/1.json
  def show
  end

  # GET /people_person_types/new
  def new
    @people_person_type = PeoplePersonType.new
    @people = Person.all
    @persont_types = PersontType.all
  end

  # GET /people_person_types/1/edit
  def edit
    @people = Person.all
    @persont_types = PersontType.all
  end

  # POST /people_person_types
  # POST /people_person_types.json
  def create
    @people_person_type = PeoplePersonType.new(people_person_type_params)

    respond_to do |format|
      if @people_person_type.save
        format.html { redirect_to @people_person_type, notice: 'People person type was successfully created.' }
        format.json { render :show, status: :created, location: @people_person_type }
      else
        format.html { render :new }
        format.json { render json: @people_person_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people_person_types/1
  # PATCH/PUT /people_person_types/1.json
  def update
    respond_to do |format|
      if @people_person_type.update(people_person_type_params)
        format.html { redirect_to @people_person_type, notice: 'People person type was successfully updated.' }
        format.json { render :show, status: :ok, location: @people_person_type }
      else
        format.html { render :edit }
        format.json { render json: @people_person_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people_person_types/1
  # DELETE /people_person_types/1.json
  def destroy
    @people_person_type.destroy
    respond_to do |format|
      format.html { redirect_to people_person_types_url, notice: 'People person type was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_person_type
      @people_person_type = PeoplePersonType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def people_person_type_params
      params.require(:people_person_type).permit(:PersonalID, :PersonType)
    end
end

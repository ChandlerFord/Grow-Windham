class EventsPeopleController < ApplicationController
  before_action :set_events_person, only: [:show, :edit, :update, :destroy]

  # GET /events_people
  # GET /events_people.json
  def index
    @events_people = EventsPerson.search(params[:search]).order("EventName")
    @events_people = EventsPerson.personsearch(params[:personsearch])
  end

  # GET /events_people/1
  # GET /events_people/1.json
  def show
    @people = Person.all
  end

  # GET /events_people/new
  def new
    @events_person = EventsPerson.new
    @people = Person.all
    @events = Event.all
    @event_roles = EventRole.all
    @sub_organizations = SubOrganization.all
    @organizations = Organization.all
    @grades = Grade.all
  end

  # GET /events_people/1/edit
  def edit
    @people = Person.all
    @events = Event.all
    @event_roles = EventRole.all
    @sub_organizations = SubOrganization.all
    @organizations = Organization.all
    @grades = Grade.all
  end
  
  # POST /events_people
  # POST /events_people.json
  def create
    @events_person = EventsPerson.new(events_person_params)

    respond_to do |format|
      if @events_person.save
        format.html { redirect_to @events_person, notice: 'Events person was successfully created.' }
        format.json { render :show, status: :created, location: @events_person }
      else
        format.html { render :new }
        format.json { render json: @events_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events_people/1
  # PATCH/PUT /events_people/1.json
  def update
    respond_to do |format|
      if @events_person.update(events_person_params)
        format.html { redirect_to @events_person, notice: 'Events person was successfully updated.' }
        format.json { render :show, status: :ok, location: @events_person }
      else
        format.html { render :edit }
        format.json { render json: @events_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events_people/1
  # DELETE /events_people/1.json
  def destroy
    @events_person.destroy
    respond_to do |format|
      format.html { redirect_to events_people_url, notice: 'Events person was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events_person
      @events_person = EventsPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def events_person_params
      params.require(:events_person).permit(:PersonalID, :EventName, :EventDate, :HoursWorked, :EventRole, :OrganizationName, :SubOrganizationName, :Grade)
    end
end

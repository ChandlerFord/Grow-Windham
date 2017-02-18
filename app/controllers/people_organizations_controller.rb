class PeopleOrganizationsController < ApplicationController
  before_action :set_people_organization, only: [:show, :edit, :update, :destroy]

  # GET /people_organizations
  # GET /people_organizations.json
  def index
    @people_organizations = PeopleOrganization.all
  end

  # GET /people_organizations/1
  # GET /people_organizations/1.json
  def show
  end

  # GET /people_organizations/new
  def new
    @people_organization = PeopleOrganization.new
  end

  # GET /people_organizations/1/edit
  def edit
  end

  # POST /people_organizations
  # POST /people_organizations.json
  def create
    @people_organization = PeopleOrganization.new(people_organization_params)

    respond_to do |format|
      if @people_organization.save
        format.html { redirect_to @people_organization, notice: 'People organization was successfully created.' }
        format.json { render :show, status: :created, location: @people_organization }
      else
        format.html { render :new }
        format.json { render json: @people_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people_organizations/1
  # PATCH/PUT /people_organizations/1.json
  def update
    respond_to do |format|
      if @people_organization.update(people_organization_params)
        format.html { redirect_to @people_organization, notice: 'People organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @people_organization }
      else
        format.html { render :edit }
        format.json { render json: @people_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people_organizations/1
  # DELETE /people_organizations/1.json
  def destroy
    @people_organization.destroy
    respond_to do |format|
      format.html { redirect_to people_organizations_url, notice: 'People organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_people_organization
      @people_organization = PeopleOrganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def people_organization_params
      params.require(:people_organization).permit(:PersonalID, :OrganizationName)
    end
end

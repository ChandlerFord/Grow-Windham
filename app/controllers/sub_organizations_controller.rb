class SubOrganizationsController < ApplicationController
  before_action :set_sub_organization, only: [:show, :edit, :update, :destroy]

  # GET /sub_organizations
  # GET /sub_organizations.json
  def index
    @sub_organizations = SubOrganization.all
  end

  # GET /sub_organizations/1
  # GET /sub_organizations/1.json
  def show
  end

  # GET /sub_organizations/new
  def new
    @sub_organization = SubOrganization.new
  end

  # GET /sub_organizations/1/edit
  def edit
  end

  # POST /sub_organizations
  # POST /sub_organizations.json
  def create
    @sub_organization = SubOrganization.new(sub_organization_params)

    respond_to do |format|
      if @sub_organization.save
        format.html { redirect_to @sub_organization, notice: 'Sub organization was successfully created.' }
        format.json { render :show, status: :created, location: @sub_organization }
      else
        format.html { render :new }
        format.json { render json: @sub_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_organizations/1
  # PATCH/PUT /sub_organizations/1.json
  def update
    respond_to do |format|
      if @sub_organization.update(sub_organization_params)
        format.html { redirect_to @sub_organization, notice: 'Sub organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_organization }
      else
        format.html { render :edit }
        format.json { render json: @sub_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_organizations/1
  # DELETE /sub_organizations/1.json
  def destroy
    @sub_organization.destroy
    respond_to do |format|
      format.html { redirect_to sub_organizations_url, notice: 'Sub organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_organization
      @sub_organization = SubOrganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_organization_params
      params.require(:sub_organization).permit(:OrganizationName, :SubOrganizationName, :Description)
    end
end

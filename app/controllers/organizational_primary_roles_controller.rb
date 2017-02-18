class OrganizationalPrimaryRolesController < ApplicationController
  before_action :set_organizational_primary_role, only: [:show, :edit, :update, :destroy]

  # GET /organizational_primary_roles
  # GET /organizational_primary_roles.json
  def index
    @organizational_primary_roles = OrganizationalPrimaryRole.all
  end

  # GET /organizational_primary_roles/1
  # GET /organizational_primary_roles/1.json
  def show
  end

  # GET /organizational_primary_roles/new
  def new
    @organizational_primary_role = OrganizationalPrimaryRole.new
  end

  # GET /organizational_primary_roles/1/edit
  def edit
  end

  # POST /organizational_primary_roles
  # POST /organizational_primary_roles.json
  def create
    @organizational_primary_role = OrganizationalPrimaryRole.new(organizational_primary_role_params)

    respond_to do |format|
      if @organizational_primary_role.save
        format.html { redirect_to @organizational_primary_role, notice: 'Organizational primary role was successfully created.' }
        format.json { render :show, status: :created, location: @organizational_primary_role }
      else
        format.html { render :new }
        format.json { render json: @organizational_primary_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizational_primary_roles/1
  # PATCH/PUT /organizational_primary_roles/1.json
  def update
    respond_to do |format|
      if @organizational_primary_role.update(organizational_primary_role_params)
        format.html { redirect_to @organizational_primary_role, notice: 'Organizational primary role was successfully updated.' }
        format.json { render :show, status: :ok, location: @organizational_primary_role }
      else
        format.html { render :edit }
        format.json { render json: @organizational_primary_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizational_primary_roles/1
  # DELETE /organizational_primary_roles/1.json
  def destroy
    @organizational_primary_role.destroy
    respond_to do |format|
      format.html { redirect_to organizational_primary_roles_url, notice: 'Organizational primary role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organizational_primary_role
      @organizational_primary_role = OrganizationalPrimaryRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organizational_primary_role_params
      params.require(:organizational_primary_role).permit(:PrimaryRole, :Description)
    end
end

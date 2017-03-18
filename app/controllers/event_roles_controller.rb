class EventRolesController < ApplicationController
  before_action :set_event_role, only: [:show, :edit, :update, :destroy]

  # GET /event_roles
  # GET /event_roles.json
  def index
    @event_roles = EventRole.all
  end

  # GET /event_roles/1
  # GET /event_roles/1.json
  def show
  end

  # GET /event_roles/new
  def new
    @event_role = EventRole.new
  end

  # GET /event_roles/1/edit
  def edit
  end

  # POST /event_roles
  # POST /event_roles.json
  def create
    @event_role = EventRole.new(event_role_params)

    respond_to do |format|
      if @event_role.save
        format.html { redirect_to @event_role, notice: 'Event role was successfully created.' }
        format.json { render :show, status: :created, location: @event_role }
      else
        format.html { render :new }
        format.json { render json: @event_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_roles/1
  # PATCH/PUT /event_roles/1.json
  def update
    respond_to do |format|
      if @event_role.update(event_role_params)
        format.html { redirect_to @event_role, notice: 'Event role was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_role }
      else
        format.html { render :edit }
        format.json { render json: @event_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_roles/1
  # DELETE /event_roles/1.json
  def destroy
    @event_role.destroy
    respond_to do |format|
      format.html { redirect_to event_roles_url, notice: 'Event role was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_role
      @event_role = EventRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_role_params
      params.require(:event_role).permit(:EventRole, :Description)
    end
end

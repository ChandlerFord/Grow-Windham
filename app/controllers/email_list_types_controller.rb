class EmailListTypesController < ApplicationController
  before_action :set_email_list_type, only: [:show, :edit, :update, :destroy]

  # GET /email_list_types
  # GET /email_list_types.json
  def index
    @email_list_types = EmailListType.all
  end

  # GET /email_list_types/1
  # GET /email_list_types/1.json
  def show
  end

  # GET /email_list_types/new
  def new
    @email_list_type = EmailListType.new
  end

  # GET /email_list_types/1/edit
  def edit
  end

  # POST /email_list_types
  # POST /email_list_types.json
  def create
    @email_list_type = EmailListType.new(email_list_type_params)

    respond_to do |format|
      if @email_list_type.save
        format.html { redirect_to @email_list_type, notice: 'Email list type was successfully created.' }
        format.json { render :show, status: :created, location: @email_list_type }
      else
        format.html { render :new }
        format.json { render json: @email_list_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_list_types/1
  # PATCH/PUT /email_list_types/1.json
  def update
    respond_to do |format|
      if @email_list_type.update(email_list_type_params)
        format.html { redirect_to @email_list_type, notice: 'Email list type was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_list_type }
      else
        format.html { render :edit }
        format.json { render json: @email_list_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_list_types/1
  # DELETE /email_list_types/1.json
  def destroy
    @email_list_type.destroy
    respond_to do |format|
      format.html { redirect_to email_list_types_url, notice: 'Email list type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_list_type
      @email_list_type = EmailListType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_list_type_params
      params.require(:email_list_type).permit(:ListType, :ListTypeDescription)
    end
end

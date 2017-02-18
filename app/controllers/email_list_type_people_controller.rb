class EmailListTypePeopleController < ApplicationController
  before_action :set_email_list_type_person, only: [:show, :edit, :update, :destroy]

  # GET /email_list_type_people
  # GET /email_list_type_people.json
  def index
    @email_list_type_people = EmailListTypePerson.all
  end

  # GET /email_list_type_people/1
  # GET /email_list_type_people/1.json
  def show
  end

  # GET /email_list_type_people/new
  def new
    @email_list_type_person = EmailListTypePerson.new
  end

  # GET /email_list_type_people/1/edit
  def edit
  end

  # POST /email_list_type_people
  # POST /email_list_type_people.json
  def create
    @email_list_type_person = EmailListTypePerson.new(email_list_type_person_params)

    respond_to do |format|
      if @email_list_type_person.save
        format.html { redirect_to @email_list_type_person, notice: 'Email list type person was successfully created.' }
        format.json { render :show, status: :created, location: @email_list_type_person }
      else
        format.html { render :new }
        format.json { render json: @email_list_type_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_list_type_people/1
  # PATCH/PUT /email_list_type_people/1.json
  def update
    respond_to do |format|
      if @email_list_type_person.update(email_list_type_person_params)
        format.html { redirect_to @email_list_type_person, notice: 'Email list type person was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_list_type_person }
      else
        format.html { render :edit }
        format.json { render json: @email_list_type_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_list_type_people/1
  # DELETE /email_list_type_people/1.json
  def destroy
    @email_list_type_person.destroy
    respond_to do |format|
      format.html { redirect_to email_list_type_people_url, notice: 'Email list type person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_list_type_person
      @email_list_type_person = EmailListTypePerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_list_type_person_params
      params.require(:email_list_type_person).permit(:PersonalID, :EmailListType)
    end
end

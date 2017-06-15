class HousePeopleController < ApplicationController
  before_action :set_house_person, only: [:show, :edit, :update, :destroy]

  # GET /house_people
  # GET /house_people.json
  def index
    @house_people = HousePerson.all
  end

  # GET /house_people/1
  # GET /house_people/1.json
  def show
  end

  # GET /house_people/new
  def new
    @house_person = HousePerson.new
  end

  # GET /house_people/1/edit
  def edit
  end

  # POST /house_people
  # POST /house_people.json
  def create
    @house_person = HousePerson.new(house_person_params)

    respond_to do |format|
      if @house_person.save
        format.html { redirect_to @house_person, notice: 'House person was successfully created.' }
        format.json { render :show, status: :created, location: @house_person }
      else
        format.html { render :new }
        format.json { render json: @house_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /house_people/1
  # PATCH/PUT /house_people/1.json
  def update
    respond_to do |format|
      if @house_person.update(house_person_params)
        format.html { redirect_to @house_person, notice: 'House person was successfully updated.' }
        format.json { render :show, status: :ok, location: @house_person }
      else
        format.html { render :edit }
        format.json { render json: @house_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /house_people/1
  # DELETE /house_people/1.json
  def destroy
    @house_person.destroy
    respond_to do |format|
      format.html { redirect_to house_people_url, notice: 'House person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house_person
      @house_person = HousePerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_person_params
      params.require(:house_person).permit(:house_id, :person_id)
    end
end

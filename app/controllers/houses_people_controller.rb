class HousesPeopleController < ApplicationController
  before_action :set_houses_person, only: [:show, :edit, :update, :destroy]

  # GET /houses_people
  # GET /houses_people.json
  def index
    @houses_people = HousesPeople.all
  end

  # GET /houses_people/1
  # GET /houses_people/1.json
  def show
  end

  # GET /houses_people/new
  def new
    @houses_person = HousesPeople.new
  end

  # GET /houses_people/1/edit
  def edit
  end

  # POST /houses_people
  # POST /houses_people.json
  def create
    @houses_person = HousesPeople.new(houses_person_params)

    #respond_to do |format|
      @houses_person.save
        redirect_to new_houses_person_path
        #format.html { redirect_to @houses_person, notice: 'Houses people was successfully created.' }
        #format.json { render :show, status: :created, location: @houses_person }
      #else
        #format.html { render :new }
        #format.json { render json: @houses_person.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PATCH/PUT /houses_people/1
  # PATCH/PUT /houses_people/1.json
  def update
    respond_to do |format|
      if @houses_person.update(houses_person_params)
        format.html { redirect_to @houses_person, notice: 'Houses people was successfully updated.' }
        format.json { render :show, status: :ok, location: @houses_person }
      else
        format.html { render :edit }
        format.json { render json: @houses_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses_people/1
  # DELETE /houses_people/1.json
  def destroy
    @houses_person.destroy
    respond_to do |format|
      format.html { redirect_to houses_people_index_url, notice: 'Houses people was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_houses_person
      @houses_person = HousesPeople.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def houses_person_params
      params.require(:houses_person).permit(:house_id, :person_id)
    end
end

class TPersonsController < ApplicationController
  before_action :set_t_person, only: [:show, :edit, :update, :destroy]

  # GET /t_people
  # GET /t_people.json
  def index
    @t_people = TPerson.all
  end

  # GET /t_people/1
  # GET /t_people/1.json
  def show
  end

  # GET /t_people/new
  def new
    @t_person = TPerson.new
  end

  # GET /t_people/1/edit
  def edit
  end

  # POST /t_people
  # POST /t_people.json
  def create
    @t_person = TPerson.new(t_person_params)

    respond_to do |format|
      if @t_person.save
        format.html { redirect_to @t_person, notice: 'T person was successfully created.' }
        format.json { render :show, status: :created, location: @t_person }
      else
        format.html { render :new }
        format.json { render json: @t_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_people/1
  # PATCH/PUT /t_people/1.json
  def update
    respond_to do |format|
      if @t_person.update(t_person_params)
        format.html { redirect_to @t_person, notice: 'T person was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_person }
      else
        format.html { render :edit }
        format.json { render json: @t_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_people/1
  # DELETE /t_people/1.json
  def destroy
    @t_person.destroy
    respond_to do |format|
      format.html { redirect_to t_people_url, notice: 'T person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_person
      @t_person = TPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_person_params
      params.require(:t_person).permit(:FIRST_NAME, :LAST_NAME)
    end
end

class TFacilityAccessEventHistoriesController < ApplicationController
  before_action :set_t_facility_access_event_history, only: [:show, :edit, :update, :destroy]

  # GET /t_facility_access_event_histories
  # GET /t_facility_access_event_histories.json
  def index
    @t_facility_access_event_histories = TFacilityAccessEventHistory.all
        @t_facility_access_event_histories_first = TFacilityAccessEventHistory.limit(5)
  end

  # GET /t_facility_access_event_histories/1
  # GET /t_facility_access_event_histories/1.json
  def show
  end

  # GET /t_facility_access_event_histories/new
  def new
    @t_facility_access_event_history = TFacilityAccessEventHistory.new
  end

  # GET /t_facility_access_event_histories/1/edit
  def edit
  end

  # POST /t_facility_access_event_histories
  # POST /t_facility_access_event_histories.json
  def create
    @t_facility_access_event_history = TFacilityAccessEventHistory.new(t_facility_access_event_history_params)

    respond_to do |format|
      if @t_facility_access_event_history.save
        format.html { redirect_to @t_facility_access_event_history, notice: 'T facility access event history was successfully created.' }
        format.json { render :show, status: :created, location: @t_facility_access_event_history }
      else
        format.html { render :new }
        format.json { render json: @t_facility_access_event_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_facility_access_event_histories/1
  # PATCH/PUT /t_facility_access_event_histories/1.json
  def update
    respond_to do |format|
      if @t_facility_access_event_history.update(t_facility_access_event_history_params)
        format.html { redirect_to @t_facility_access_event_history, notice: 'T facility access event history was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_facility_access_event_history }
      else
        format.html { render :edit }
        format.json { render json: @t_facility_access_event_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_facility_access_event_histories/1
  # DELETE /t_facility_access_event_histories/1.json
  def destroy
    @t_facility_access_event_history.destroy
    respond_to do |format|
      format.html { redirect_to t_facility_access_event_histories_url, notice: 'T facility access event history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_facility_access_event_history
      @t_facility_access_event_history = TFacilityAccessEventHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_facility_access_event_history_params
      params.require(:t_facility_access_event_history).permit(:first_name, :last_name, :person_id)
    end
end

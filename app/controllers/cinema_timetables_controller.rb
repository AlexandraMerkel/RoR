class CinemaTimetablesController < ApplicationController
  before_action :set_cinema_timetable, only: [:show, :edit, :update, :destroy]

  # GET /cinema_timetables
  # GET /cinema_timetables.json
  def index
    @cinema_timetables = CinemaTimetable.all
  end

  # GET /cinema_timetables/1
  # GET /cinema_timetables/1.json
  def show
  end

  # GET /cinema_timetables/new
  def new
    @cinema_timetable = CinemaTimetable.new
  end

  # GET /cinema_timetables/1/edit
  def edit
  end

  # POST /cinema_timetables
  # POST /cinema_timetables.json
  def create
    @cinema_timetable = CinemaTimetable.new(cinema_timetable_params)

    respond_to do |format|
      if @cinema_timetable.save
        format.html { redirect_to @cinema_timetable, notice: 'Cinema timetable was successfully created.' }
        format.json { render :show, status: :created, location: @cinema_timetable }
      else
        format.html { render :new }
        format.json { render json: @cinema_timetable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinema_timetables/1
  # PATCH/PUT /cinema_timetables/1.json
  def update
    respond_to do |format|
      if @cinema_timetable.update(cinema_timetable_params)
        format.html { redirect_to @cinema_timetable, notice: 'Cinema timetable was successfully updated.' }
        format.json { render :show, status: :ok, location: @cinema_timetable }
      else
        format.html { render :edit }
        format.json { render json: @cinema_timetable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinema_timetables/1
  # DELETE /cinema_timetables/1.json
  def destroy
    @cinema_timetable.destroy
    respond_to do |format|
      format.html { redirect_to cinema_timetables_url, notice: 'Cinema timetable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema_timetable
      @cinema_timetable = CinemaTimetable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cinema_timetable_params
      params.require(:cinema_timetable).permit(:cinema_id, :movie_id, :hall, :start)
    end
end

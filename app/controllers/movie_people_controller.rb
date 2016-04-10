class MoviePeopleController < ApplicationController
  before_action :set_movie_person, only: [:show, :edit, :update, :destroy]

  # GET /movie_people
  # GET /movie_people.json
  def index
    @movie_people = MoviePerson.all
  end

  # GET /movie_people/1
  # GET /movie_people/1.json
  def show
  end

  # GET /movie_people/new
  def new
    @movie_person = MoviePerson.new
  end

  # GET /movie_people/1/edit
  def edit
  end

  # POST /movie_people
  # POST /movie_people.json
  def create
    @movie_person = MoviePerson.new(movie_person_params)

    respond_to do |format|
      if @movie_person.save
        format.html { redirect_to @movie_person, notice: 'Movie person was successfully created.' }
        format.json { render :show, status: :created, location: @movie_person }
      else
        format.html { render :new }
        format.json { render json: @movie_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_people/1
  # PATCH/PUT /movie_people/1.json
  def update
    respond_to do |format|
      if @movie_person.update(movie_person_params)
        format.html { redirect_to @movie_person, notice: 'Movie person was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_person }
      else
        format.html { render :edit }
        format.json { render json: @movie_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_people/1
  # DELETE /movie_people/1.json
  def destroy
    @movie_person.destroy
    respond_to do |format|
      format.html { redirect_to movie_people_url, notice: 'Movie person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_person
      @movie_person = MoviePerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_person_params
      params.require(:movie_person).permit(:role, :movie_id, :person_id)
    end
end

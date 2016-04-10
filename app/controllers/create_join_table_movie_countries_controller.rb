class CreateJoinTableMovieCountriesController < ApplicationController
  before_action :set_create_join_table_movie_country, only: [:show, :edit, :update, :destroy]

  # GET /create_join_table_movie_countries
  # GET /create_join_table_movie_countries.json
  def index
    @create_join_table_movie_countries = CreateJoinTableMovieCountry.all
  end

  # GET /create_join_table_movie_countries/1
  # GET /create_join_table_movie_countries/1.json
  def show
  end

  # GET /create_join_table_movie_countries/new
  def new
    @create_join_table_movie_country = CreateJoinTableMovieCountry.new
  end

  # GET /create_join_table_movie_countries/1/edit
  def edit
  end

  # POST /create_join_table_movie_countries
  # POST /create_join_table_movie_countries.json
  def create
    @create_join_table_movie_country = CreateJoinTableMovieCountry.new(create_join_table_movie_country_params)

    respond_to do |format|
      if @create_join_table_movie_country.save
        format.html { redirect_to @create_join_table_movie_country, notice: 'Create join table movie country was successfully created.' }
        format.json { render :show, status: :created, location: @create_join_table_movie_country }
      else
        format.html { render :new }
        format.json { render json: @create_join_table_movie_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_join_table_movie_countries/1
  # PATCH/PUT /create_join_table_movie_countries/1.json
  def update
    respond_to do |format|
      if @create_join_table_movie_country.update(create_join_table_movie_country_params)
        format.html { redirect_to @create_join_table_movie_country, notice: 'Create join table movie country was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_join_table_movie_country }
      else
        format.html { render :edit }
        format.json { render json: @create_join_table_movie_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_join_table_movie_countries/1
  # DELETE /create_join_table_movie_countries/1.json
  def destroy
    @create_join_table_movie_country.destroy
    respond_to do |format|
      format.html { redirect_to create_join_table_movie_countries_url, notice: 'Create join table movie country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_join_table_movie_country
      @create_join_table_movie_country = CreateJoinTableMovieCountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_join_table_movie_country_params
      params.require(:create_join_table_movie_country).permit(:movie, :country)
    end
end

class MovieCompaniesController < ApplicationController
  before_action :set_movie_company, only: [:show, :edit, :update, :destroy]

  # GET /movie_companies
  # GET /movie_companies.json
  def index
    @movie_companies = MovieCompany.all
  end

  # GET /movie_companies/1
  # GET /movie_companies/1.json
  def show
  end

  # GET /movie_companies/new
  def new
    @movie_company = MovieCompany.new
  end

  # GET /movie_companies/1/edit
  def edit
  end

  # POST /movie_companies
  # POST /movie_companies.json
  def create
    @movie_company = MovieCompany.new(movie_company_params)

    respond_to do |format|
      if @movie_company.save
        format.html { redirect_to @movie_company, notice: 'Movie company was successfully created.' }
        format.json { render :show, status: :created, location: @movie_company }
      else
        format.html { render :new }
        format.json { render json: @movie_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_companies/1
  # PATCH/PUT /movie_companies/1.json
  def update
    respond_to do |format|
      if @movie_company.update(movie_company_params)
        format.html { redirect_to @movie_company, notice: 'Movie company was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_company }
      else
        format.html { render :edit }
        format.json { render json: @movie_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_companies/1
  # DELETE /movie_companies/1.json
  def destroy
    @movie_company.destroy
    respond_to do |format|
      format.html { redirect_to movie_companies_url, notice: 'Movie company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_company
      @movie_company = MovieCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_company_params
      params.require(:movie_company).permit(:name)
    end
end

class TmdbmoviesController < ApplicationController
  before_action :set_tmdbmovie, only: [:show, :edit, :update, :destroy]

  # GET /tmdbmovies
  # GET /tmdbmovies.json
  def index
    @tmdbmovies = Tmdbmovie.all
  end

  # GET /tmdbmovies/1
  # GET /tmdbmovies/1.json
  def show
  end

  # GET /tmdbmovies/new
  def new
    @tmdbmovie = Tmdbmovie.new
  end

  # GET /tmdbmovies/1/edit
  def edit
  end

  # POST /tmdbmovies
  # POST /tmdbmovies.json
  def create
    @tmdbmovie = Tmdbmovie.new(tmdbmovie_params)

    respond_to do |format|
      if @tmdbmovie.save
        format.html { redirect_to @tmdbmovie, notice: 'Tmdbmovie was successfully created.' }
        format.json { render :show, status: :created, location: @tmdbmovie }
      else
        format.html { render :new }
        format.json { render json: @tmdbmovie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tmdbmovies/1
  # PATCH/PUT /tmdbmovies/1.json
  def update
    respond_to do |format|
      if @tmdbmovie.update(tmdbmovie_params)
        format.html { redirect_to @tmdbmovie, notice: 'Tmdbmovie was successfully updated.' }
        format.json { render :show, status: :ok, location: @tmdbmovie }
      else
        format.html { render :edit }
        format.json { render json: @tmdbmovie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tmdbmovies/1
  # DELETE /tmdbmovies/1.json
  def destroy
    @tmdbmovie.destroy
    respond_to do |format|
      format.html { redirect_to tmdbmovies_url, notice: 'Tmdbmovie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tmdbmovie
      @tmdbmovie = Tmdbmovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tmdbmovie_params
      params.require(:tmdbmovie).permit(:adult, :backdrop_path, :belongs_to_collection, :budget, :genres, :homepage, :tmdb_id, :imdb_id, :original_language, :original_title, :overview, :popularity, :poster_path, :production_companies, :production_countries, :release_date, :revenue, :runtime, :spoken_languages, :status, :tagline, :title, :video, :vote_average, :vote_count)
    end
end

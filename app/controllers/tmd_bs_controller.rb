class TmdBsController < ApplicationController
  before_action :set_tmdb, only: [:show, :edit, :update, :destroy]

  # GET /tmdbs
  # GET /tmdbs.json
  def index
    @tmdbs = Tmdb.all
  end

  # GET /tmdbs/1
  # GET /tmdbs/1.json
  def show
  end

  # GET /tmdbs/new
  def new
    @tmdb = Tmdb.new
  end

  # GET /tmdbs/1/edit
  def edit
  end

  # POST /tmdbs
  # POST /tmdbs.json
  def create
    @tmdb = Tmdb.new(tmdb_params)

    respond_to do |format|
      if @tmdb.save
        format.html { redirect_to @tmdb, notice: 'Tmdb was successfully created.' }
        format.json { render :show, status: :created, location: @tmdb }
      else
        format.html { render :new }
        format.json { render json: @tmdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tmdbs/1
  # PATCH/PUT /tmdbs/1.json
  def update
    respond_to do |format|
      if @tmdb.update(tmdb_params)
        format.html { redirect_to @tmdb, notice: 'Tmdb was successfully updated.' }
        format.json { render :show, status: :ok, location: @tmdb }
      else
        format.html { render :edit }
        format.json { render json: @tmdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tmdbs/1
  # DELETE /tmdbs/1.json
  def destroy
    @tmdb.destroy
    respond_to do |format|
      format.html { redirect_to tmdbs_url, notice: 'Tmdb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tmdb
      @tmdb = Tmdb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tmdb_params
      params.require(:tmdb).permit(:adult, :backdrop_path, :belongs_to_collection, :collection_id, :collection_name, :collection_poster_path, :collection_backdrop_path, :budget, :genres_id, :genres_name, :homepage, :tmdb_id, :imdb_id, :original_language, :original_title, :overview, :popularity, :poster_path, :production_companies_name, :production_companies_id, :production_countries_iso_3166_1, :production_countries_name, :release_date, :revenue, :runtime, :spoken_languages_iso_639_1, :spoken_languages_id, :status, :tagline, :title, :video, :vote_average, :vote_count)
    end
end

class MovieHappeningsController < ApplicationController
  # GET /movie_happenings
  # GET /movie_happenings.json
  def index
    @movie_happenings = MovieHappening.all

    render json: @movie_happenings
  end

  # GET /movie_happenings/1
  # GET /movie_happenings/1.json
  def show
    @movie_happening = MovieHappening.find(params[:id])

    render json: @movie_happening
  end

  # POST /movie_happenings
  # POST /movie_happenings.json
  def create
    @movie_happening = MovieHappening.new(params[:movie_happening])

    if @movie_happening.save
      render json: @movie_happening, status: :created, location: @movie_happening
    else
      render json: @movie_happening.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_happenings/1
  # PATCH/PUT /movie_happenings/1.json
  def update
    @movie_happening = MovieHappening.find(params[:id])

    if @movie_happening.update_attributes(params[:movie_happening])
      head :no_content
    else
      render json: @movie_happening.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_happenings/1
  # DELETE /movie_happenings/1.json
  def destroy
    @movie_happening = MovieHappening.find(params[:id])
    @movie_happening.destroy

    head :no_content
  end
end

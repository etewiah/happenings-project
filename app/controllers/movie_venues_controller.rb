class MovieVenuesController < ApplicationController
  # GET /movie_venues
  # GET /movie_venues.json
  def index
    @movie_venues = MovieVenue.all

    render json: @movie_venues
  end

  # GET /movie_venues/1
  # GET /movie_venues/1.json
  def show
    @movie_venue = MovieVenue.find(params[:id])

    render json: @movie_venue
  end

  # POST /movie_venues
  # POST /movie_venues.json
  def create
    @movie_venue = MovieVenue.new(params[:movie_venue])

    if @movie_venue.save
      render json: @movie_venue, status: :created, location: @movie_venue
    else
      render json: @movie_venue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_venues/1
  # PATCH/PUT /movie_venues/1.json
  def update
    @movie_venue = MovieVenue.find(params[:id])

    if @movie_venue.update_attributes(params[:movie_venue])
      head :no_content
    else
      render json: @movie_venue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_venues/1
  # DELETE /movie_venues/1.json
  def destroy
    @movie_venue = MovieVenue.find(params[:id])
    @movie_venue.destroy

    head :no_content
  end
end

class Api::V1::MovieHappeningsController < ApplicationController
  # GET /movie_happenings
  # GET /movie_happenings.json
  def index

    if params[:city]
      city = params[:city].downcase
    else
      city = "london"
    end

    if params[:day_range]
      day = Time.zone.parse(params[:day_range])
      @movie_happenings = MovieHappening.where(:date => 
        day.beginning_of_day..day.end_of_day, :city => city)
    # elsif params[:week_range]
    #   start_day = Time.zone.parse(params[:week_range])
    #   end_day = start_day + 6.days
    #   @flat_happenings = FlatHappening.where(:start_time => 
    #     start_day.beginning_of_day..end_day.end_of_day, :city => city ).order( "start_time asc")    
    else
      @movie_happenings = MovieHappening.where(:city => city)
    end

    # @movie_happenings = MovieHappening.all
    @grouped_movie_happenings = []
    @movie_happenings.group_by{ |item| item.movie_name }.each do |movie_name, item|
      @grouped_movie_happenings.push({
        :movie_name => movie_name,
        :screenings => item
        })
    end

    render json: @grouped_movie_happenings.to_json
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
    # avoid creating duplicates:
    @movie_happening =  MovieHappening.where(:movie_name => params[:movie_happening][:movie_name], 
                         :venue_name => params[:movie_happening][:venue_name], 
                         :date => params[:movie_happening][:date] ).first_or_initialize(params[:movie_happening])

    if @movie_happening.save
      render json: @movie_happening, status: :created
      # , location: @movie_happening
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

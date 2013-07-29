class Api::V1::FlatHappeningsController < ApplicationController
  # GET /flat_happenings
  # GET /flat_happenings.json
  def index
    if params[:city]
      city = params[:city].downcase
    else
      city = "madrid"
    end

    if params[:day_range]
      day = Time.zone.parse(params[:day_range])
      @flat_happenings = FlatHappening.where(:start_time => 
        day.beginning_of_day..day.end_of_day, :city => city).order( "start_time asc") 
    elsif params[:week_range]
      start_day = Time.zone.parse(params[:week_range])
      end_day = start_day + 6.days
      @flat_happenings = FlatHappening.where(:start_time => 
        start_day.beginning_of_day..end_day.end_of_day, :city => city ).order( "start_time asc")    
    else
      @flat_happenings = FlatHappening.all
    end

    render json: @flat_happenings
  end

  # GET /flat_happenings/1
  # GET /flat_happenings/1.json
  def show
    @flat_happening = FlatHappening.find(params[:id])

    render json: @flat_happening
  end

  # POST /flat_happenings
  # POST /flat_happenings.json
  def create
    @flat_happening = FlatHappening.where(:namespaced_id => params[:flat_happening][:namespaced_id]).first_or_initialize(params[:flat_happening])
    # @happening = Happening.where(:source => params[:happening][:source], :meta => params[:happening][:meta]).first_or_initialize(create_params)

    if @flat_happening.save
      render json: @flat_happening, status: :created
      # , location: @flat_happening
    else
      render json: @flat_happening.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flat_happenings/1
  # PATCH/PUT /flat_happenings/1.json
  def update
    @flat_happening = FlatHappening.find(params[:id])

    if @flat_happening.update_attributes(params[:flat_happening])
      head :no_content
    else
      render json: @flat_happening.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flat_happenings/1
  # DELETE /flat_happenings/1.json
  def destroy
    @flat_happening = FlatHappening.find(params[:id])
    @flat_happening.destroy

    head :no_content
  end
end

class Api::V1::FlatHappeningsController < ApplicationController
  # GET /flat_happenings
  # GET /flat_happenings.json
  def index
    @flat_happenings = FlatHappening.all

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
    @flat_happening = FlatHappening.new(params[:flat_happening])

    if @flat_happening.save
      render json: @flat_happening, status: :created, location: @flat_happening
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

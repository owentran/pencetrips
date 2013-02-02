class TripsController < ApplicationController
 
  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.order("id desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trips }
    end
  end

  def home
    @places = Place.order(:name)
  end

  def search
    @place = Place.find(params[:place_id])
  end

  def checkout
    @place  = Place.find(params[:place_id])
    @trip   = Trip.new(params[:trip])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip }
    end
  end

  def confirm
    @trip = Trip.new(params[:trip])
    if @trip.save
      render :template => '/trips/print', :layout => 'print'
    else    
      @place  = Place.find(params[:place_id])
      render :checkout
    end 
  end

  def print
    @trip = Trip.find(params[:id])
    render :template => '/trips/print', :layout => 'print'
  end


  # GET /trips/1/edit
  def edit
    @trip = Trip.find(params[:id])
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(params[:trip])
    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render json: @trip, status: :created, location: @trip }
      else
        format.html { render action: "new" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trips/1
  # PUT /trips/1.json
  def update
    @trip = Trip.find(params[:id])

    respond_to do |format|
      if @trip.update_attributes(params[:trip])
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end
  end
end

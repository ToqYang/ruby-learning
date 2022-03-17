class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  # GET /flights or /flights.json
  def index
    if flight_search_params.present?
      puts "Hay parametros"
      search = flight_search_params
      date = search[:date].to_datetime
      #date
      @flights = Flight.where(departure_id: Airport.where(code: search[:departure_code]).first.id, arrival_id: Airport.where(code: search[:arrival_code]).first.id, date: date)
      puts "Hay #{@flights.count} vuelos"
    else
      @flights = Flight.all
      puts "Hay #{@flights.count} vuelos.--"
    end
  end

  # GET /flights/1 or /flights/1.json
  def show
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights or /flights.json
  def create
    @flight = Flight.new(flight_params)

    respond_to do |format|
      if @flight.save
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully created." }
        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1 or /flights/1.json
  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to flight_url(@flight), notice: "Flight was successfully updated." }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1 or /flights/1.json
  def destroy
    @flight.destroy

    respond_to do |format|
      format.html { redirect_to flights_url, notice: "Flight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Only params flight
    def flight_search_params
      params.permit(:departure_code, :arrival_code, :date, :num_tickets)
    end

    # Only allow a list of trusted parameters through.
    def flight_params
      params.fetch(:flight, {}).permit(:departure_code, :arrival_code, :date, :num_tickets)
    end
end

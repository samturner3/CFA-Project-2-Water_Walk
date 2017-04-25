class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index

    @locations = Location.all
    # Generate map markers from locations
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.lat
      marker.lng location.long
      marker.json({ :id => location.id })
      marker.infowindow render_to_string(:partial => "/locations/my_template", :locals => { :object => location})
    end

    puts '*' * 40
    puts @hash.inspect
    puts '*' * 40
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    # Static Map On Show

      def static_map_for(location, options = {})

        params = {
          :center => [@location.lat, @location.long].join(","),
          :zoom => 10,
          :size => "300x300",
          :markers => [@location.lat, @location.long].join(","),
          :sensor => true
          }.merge(options)


        query_string =  params.map{|k,v| "#{k}=#{v}"}.join("&")
        image_tag = "http://maps.googleapis.com/maps/api/staticmap?#{query_string}"

      end


    @img_tag = static_map_for(@location)
    # puts '*'*40
    # puts @img_tag


    # Simple directions


  end


  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save

        require 'google_maps_service'
            # More complex setup
        gmaps = GoogleMapsService::Client.new(
            key: GoogleMapsService_key,
            retry_timeout: 20,      # Timeout for retrying failed request
            queries_per_second: 10  # Limit total request per second
        )

        results = gmaps.reverse_geocode([@location.lat, @location.long]) #Set address from lat long on save
        @location.address = results

        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)

        require 'google_maps_service'
            # More complex setup
        gmaps = GoogleMapsService::Client.new(
            key: GoogleMapsService_key,
            retry_timeout: 20,      # Timeout for retrying failed request
            queries_per_second: 10  # Limit total request per second
        )


        results = gmaps.reverse_geocode([@location.lat, @location.long]) #Set address from lat long on save
        @location.address = results[0][:formatted_address]
        @location.save

        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    authorize @location
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def directions

    require 'google_maps_service'
        # More complex setup
    gmaps = GoogleMapsService::Client.new(
        key: GoogleMapsService_key,
        retry_timeout: 20,      # Timeout for retrying failed request
        queries_per_second: 10  # Limit total request per second
    )

    # Simple directions
    @routes = gmaps.directions(
        '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA',
        '2400 Amphitheatre Parkway, Mountain View, CA 94043, USA',
        mode: 'walking',
        alternatives: false)

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:lat, :long, :name, :three_words, :supplier_id)
    end

end

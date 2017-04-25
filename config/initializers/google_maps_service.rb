require 'google_maps_service'

# Setup global parameters
GoogleMapsService.configure do |config|
  config.key = GoogleMapsService_key
  config.retry_timeout = 20
  config.queries_per_second = 10
end

# Initialize client using global parameters
gmaps = GoogleMapsService::Client.new

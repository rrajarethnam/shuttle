class ShuttleController < ApplicationController
  protect_from_forgery except: :update_location

  def index
    @shuttle = Shuttle.first
  end


  def update_location
    # Save the user's location to the database or perform any other necessary action
    @shuttle = Shuttle.first
    @shuttle.lat = params[:lat]
    @shuttle.lng = params[:lng]
    @shuttle.save

    #Rails.log "location is:" + @shuttle_lat + "," + @shuttle_lng 

    # Update the user's location in the database or perform any other necessary action
    # Example: User.update_location(lat: lat, lng: lng)

    render json: { message: 'Location updated successfully.' }
  end

  def locations
    # Simulated data for demonstration purposes
    @shuttle = Shuttle.first

    shuttle_location = { lat: @shuttle.lat, lng: @shuttle.lng }
    user_locations = [
      
    ]

    render json: { shuttle: shuttle_location, users: user_locations }
  end
end

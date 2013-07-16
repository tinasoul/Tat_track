class Tattoo < ActiveRecord::Base
  attr_accessible :artist_id, :date_completed, :date_started, :hours_spent, :inspiration, :location_on_body, :owner_id
end

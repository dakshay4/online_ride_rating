class Ride < ApplicationRecord
  belongs_to :chauffeur, class_name: "User"
  has_many :ride_passengers
  has_many :ratings

end

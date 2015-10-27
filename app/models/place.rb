class Place < ActiveRecord::Base
belongs_to :user
geocoded_by :address
after_validation :geocode
validates :address, :description, :name, length: {minimum: 3}, :presence => true
end

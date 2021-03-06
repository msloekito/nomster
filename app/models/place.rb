class Place < ActiveRecord::Base
belongs_to :user
has_many :comments
has_many :photos
geocoded_by :address
after_validation :geocode
validates :address, :description, :name, length: {minimum: 3}, :presence => true
end

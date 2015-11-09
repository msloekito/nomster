class Photo < ActiveRecord::Base
    belongs_to :place
    belongs_to :user
    mount_uploader :picture, PictureUploader
    validates :picture, :presence => true
    validates :caption, length: {minimum: 10}
end

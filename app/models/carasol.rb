class Carasol < ActiveRecord::Base

  mount_uploader :image, ImageUploader
end

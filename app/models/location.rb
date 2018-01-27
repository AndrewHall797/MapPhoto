class Location < ActiveRecord::Base
    has_attached_file :image
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    
    # Finds the images that have been uploaded by the user and returns the images in the form of a list.
    def self.user_images(id)
       @locations = Location.all
       user_pictures = Array.new
       
       for location in @locations
            if location.user_id.to_i == id.to_i
                user_pictures.push(location.image)
            end
       end
       
       return user_pictures
       
    end
    
end

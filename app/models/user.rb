class User < ActiveRecord::Base
    #Secure password atributes
    has_secure_password
    
    #Checks to see if the email is unique
    validates_uniqueness_of :email
    
    #adds the ability for the user model to store profile picture image
    has_attached_file :profile_pic,
        :styles => { :thumb => ['100x100#'] }
    validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\z/

end

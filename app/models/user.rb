class User < ActiveRecord::Base
    #Secure password atributes
    has_secure_password
    
    #Checks to see if the email is unique
    validates_uniqueness_of :email
end

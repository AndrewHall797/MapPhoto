class UsersController < ApplicationController
    
    #Creates the new user object
    def new
       @user = User.new 
    end
    
    #Makes sure that the user information entered in the new view fits in the model and if so adds the new data to the model
    def create
        @user = User.new(params.require(:user).permit(:first_name,:last_name,:email,password,password_confirmation))
        if @user.save
            
        else
            render 'new' 
        end
    end
    
    def destroy
        @user = User.find(params([:id]))
        @user.destroy
    end
    
    def index
        @user = User.all
    end
    
    def show
        @user = User.find(params([:id]))
    end
end

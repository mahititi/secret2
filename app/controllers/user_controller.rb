class UserController < ApplicationController

    def new
        @user = User.new
    end

    def show
        @user = User.find(parms[:id])
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            flash[:sucess] = "Welcome to the application"
            redirect_to @user
        else
            render 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :passord_config)
end
end

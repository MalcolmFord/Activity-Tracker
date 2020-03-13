class UserController < ApplicationController
    def index
        
    end

    def show

    end

    def edit

    end

    def create
        @user = User.new(params[:user])
    end

    def update

    end

    def destroy

    end

    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :date_of_birth, :email, :password, :weight, :goal_weight, :activity_level, :photo)
    end
end

class UsersController < ApplicationController
    def index
    end

    def show
        @user = User.find(params[:id])
    end

    def edit

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to @user
        else
            render 'new'
        end
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

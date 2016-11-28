class UsersController < ApplicationController

    def show
      authenticate_user!
      @the_user = User.find(params[:id])
      @comics_list = @the_user.comics
      render :show
    end
    
end

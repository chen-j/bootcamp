class MainController < ApplicationController
    def home
        @users_list = User.all
        render :home
      #code
    end
end

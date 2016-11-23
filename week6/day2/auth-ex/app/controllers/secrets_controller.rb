class SecretsController < ApplicationController
    def show
        get_current_user
        if session[:user_id] && @current_user.role == "admin"
        render :show
        else
        flash[:admin_only] = "You need to be admin to learn our secrets"
        redirect_to "/"
        end
    end
end

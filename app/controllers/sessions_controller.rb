class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
        else
            require_login
        end
    end
    
    def destroy
        session.delete :name
        redirect_to new_session_path
    end
end
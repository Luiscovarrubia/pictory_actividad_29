class ApplicationController < ActionController::Base



    private
    def  authenticate_user!

      redirect_to users_sing_in_path unless helpers.logged?

    end




  end


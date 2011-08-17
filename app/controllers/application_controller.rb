class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :add_section?

    def add_section?
    	false
    end
  
end

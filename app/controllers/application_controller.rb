class ApplicationController < ActionController::Base

	before_action :set_current_user

	def set_current_user
		if session[:user_id]
			Current.user = User.find_by(:id => session[:user_id])
		end
	end

	def login_require
		unless Current.user
			redirect_to sign_in_path, alert: "Must login First"
		end		
	end

	def already_logged_in
		if Current.user
			redirect_to root_path, alert: "You Are Already Logged In"
		end
	end

end

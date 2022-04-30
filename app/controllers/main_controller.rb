class MainController <  ApplicationController 
	def index 
		@user = User.catch_user_info(session[:user_id])
	end
end

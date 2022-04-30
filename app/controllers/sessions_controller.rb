class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])
		if user.present? and user.authenticate(params[:password])
			session[:user_id] = user.id
			flash[:notice] = "Successfully Logged In..."
			redirect_to root_path
		else
			flash[:alert] = "Invalid Email or Password"
			render :new
		end

				
	end
	
	def destroy
		session[:user_id] = nil
		redirect_to sign_in_path , notice: "Loged Out"
	end

end

class SessionsController < ApplicationController


def new
	@user = User.new
	@is_login = true
end

def create
	# find user
	u = User.find_by(email: params[:user][:email])

	# match them to their password
	if u && u.authenticate(params[:user][:password])
		session[:user_id] = u.id.to_s
		redirect_to root_path
	else
		flash[:notice] = "No Success"
		render 'new_session'
	end
end

def destroy
	reset_session
	redirect_to welcome_path
end





end

class UsersController < ApplicationController


def index
end

def new
	@user = User.new
end

def create
	@user = User.new
	if @user.save(user_params)
		flash[:notice] = "Success"
		redirect_to new_session_path

	else
		flash[:notice] = "No Success"
		render 'new'
	end

end

private
def user_params
	params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

end

class ApplicationController < ActionController::Base
include ActionController::Serialization

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  serialization_scope :view_context

  helper_method :current_user
  
def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

def default_serializer_options
    { root: false }
  end



end

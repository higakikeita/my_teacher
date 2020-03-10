class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_category
  before_action :configure_permitted_parameters, if: :devise_controller?
  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name self_introduction sex img_name))
  end
  
  def set_category
    @parents = Category.all.order("id ASC").limit(13)
  end
end

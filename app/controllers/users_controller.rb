class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
    users_show_path
  end
    
  def show
    
  end

end
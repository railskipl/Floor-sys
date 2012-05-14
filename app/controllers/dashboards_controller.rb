class DashboardsController < ApplicationController
  
  def dashboard
      @users = User.all
   end
   
end

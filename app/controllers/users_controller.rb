class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def new
    @user  = User.new
    @title = "Sign Up"
  end
  
  def create
     @user = User.new(params[:user])
     if @user.save
       Rails.logger.debug("HOORAY")
       redirect_to @user, :flash => { :success => "Welcome to the Sample App!" }
     else
       Rails.logger.debug("OOPS:#{@user.errors.inspect}")
       @title = "Sign up"
       render 'new'
     end
   end
  
end

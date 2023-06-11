class UsersController < ApplicationController

def show
  @user = User.find_by(id: params[:id])
  if @user
    @name = @user.name
    @comments = @user.comments
  else
    redirect_to root_path
  end
end

  #def show
    #@prototype = Prototype.find(params[:id])
    #@comment = Comment.new
    #@comments = @prototype.comments.includes(:user)
  #end

  #def show
    #@comment = Comment.find(params[:id])
    #@user = User.find(params[:id])
    #@prototypes = Prototype.all
    #@prototypes = @user.prototypes
    #@name = @user.name
    #@comments = @user.comments
  #end
end
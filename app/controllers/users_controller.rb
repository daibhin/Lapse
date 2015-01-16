class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @snippets = @user.snippets.paginate(page: params[:page])
  end
end

class UsersController < ApplicationController
	load_and_authorize_resource :except => [:test_method]
  def index
    @users = User.all
  end
  def test_method
  	@user = User.find(params[:id])
  	authorize! :manage, @user
  end
end

class UsersController < ApplicationController
  before_filter :authenticate_user!
  def show
    @user = User.find_by_id(current_user.id)
  end

  def edit
    @user = User.find_by_id(current_user.id)
  end

  def wellcome
  end
end

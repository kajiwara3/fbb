# coding: utf-8
class Admin::UsersController < Admin::Base
  def index
    @users = User.page(params[:page]).per(5)
  end
end

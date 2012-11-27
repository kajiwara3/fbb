# coding: utf-8
class Admin::AdministratorsController < Admin::Base
  before_filter :authenticate_admin_adminiatrator
  def index
    @administrators = Administrator.order(:id).page(params[:page]).per(5)
  end
end

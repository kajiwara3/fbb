class Admin::AgeGroupsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @age_groups = AgeGroup.order(:id).page(params[:page]).per(10)
  end

  def show
    @age_group = AgeGroup.find(params[:id])
  end
end

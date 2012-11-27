class Admin::AddressGroupsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @address_groups = AddressGroup.order(:id).page(params[:page]).per(5)
  end

  def show
    @address_group = AddressGroup.find(params[:id])
  end

  def edit
    @address_group = AddressGroup.find(params[:id])
  end

  def update

  end
end

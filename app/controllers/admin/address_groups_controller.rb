# coding: utf-8
class Admin::AddressGroupsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @address_groups = AddressGroup.order(:id).page(params[:page]).per(5)
  end

  def new
    @address_group = AddressGroup.new
  end

  def create
    @address_group = AddressGroup.new
    @address_group.assign_attributes params[:address_group]
    if @address_group.save
      return redirect_to [:admin, @address_group], notice: '追加しました'
    end
    flash[:error] = '問題を確認してください'
    return render 'new'
  end

  def show
    @address_group = AddressGroup.find(params[:id])
  end

  def edit
    @address_group = AddressGroup.find(params[:id])
  end

  def update
    @address_group = AddressGroup.find(params[:id])
    @address_group.assign_attributes(params[:address_group])
    if @address_group.save
      return redirect_to [:admin, @address_group], notice: '保存しました'
    end
    flash[:error] = '問題を確認してください'
    return render 'edit'
  end

  def destroy
    @address_group = AddressGroup.find(params[:id])
    if @address_group.destroy
      return redirect_to :admin_address_groups, notice: '削除しました'
    end
    flash[:error] = '削除に失敗しました'
    return render 'show'
  end
end

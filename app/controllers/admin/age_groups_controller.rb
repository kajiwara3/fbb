# coding: utf-8
class Admin::AgeGroupsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @age_groups = AgeGroup.order(:id).page(params[:page]).per(10)
  end

  def show
    @age_group = AgeGroup.find(params[:id])
  end

  def destroy
    @age_group = AgeGroup.find(params[:id])
    if @age_group.destroy
      return redirect_to :admin_age_groups,
        notice: I18n.t('helpers.complete.destroyed')
    end
    flash[:error] = I18n.t 'errors.template.header.one'
    return render 'show'
  end

  def edit
    @age_group = AgeGroup.find(params[:id])
  end

  def update
    @age_group = AgeGroup.find params[:id]
    @age_group.assign_attributes params[:age_group]
    if @age_group.save
      return redirect_to [:admin, @age_group], notice: I18n.t('helpers.complete.updated')
    end
    flash[:error] = I18n.t('errors.messages.template.header.one')
    return render 'show'
  end

  def new
    @age_group = AgeGroup.new
  end

  def create
    @age_group = AgeGroup.new
    @age_group.assign_attributes params[:age_group]
    if @age_group.save
      return redirect_to [:admin, @age_group], notice: I18n.t('helpers.complete.created')
    end
    flash[:error] = '以下の問題を確認してください'
    return render 'new'
  end
end

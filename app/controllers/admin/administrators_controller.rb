# coding: utf-8
class Admin::AdministratorsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @administrators = Administrator.order(:id).page(params[:page]).per(5)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @administrator = Administrator.find(params[:id])
  end

  def edit
    @administrator = Administrator.find(params[:id])
  end

  def update
    @administrator = Administrator.find(params[:id])
    # パスワードを更新しない場合
    delete_password_params
    @administrator.assign_attributes params[:administrator]
    if @administrator.save
      sign_in(@administrator, :bypass => true)
      return redirect_to [:admin, @administrator], notice: '登録情報を更新しました。'
    end
    render 'edit'
  end

  private
  def delete_password_params
    if params[:administrator][:password].blank? && params[:administrator][:password_confirmation].blank?
        params[:administrator].delete(:password)
        params[:administrator].delete(:password_confirmation)
    end
  end
end

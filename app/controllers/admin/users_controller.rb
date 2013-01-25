# coding: utf-8
class Admin::UsersController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def index
    @users = User.page(params[:page]).per(5)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.assign_attributes params[:user]
    if @user.save
      return redirect_to [:admin, @user], notice: I18n.t('helpers.complete.created')
    end
    flash[:error] = '以下の問題を確認してください'
    return render 'new'
  end

  def search
    condition = params[:condition]
    @users = Kaminari::paginate_array(User.retrieve_by_name_or_email condition).
      page(params[:page]).per(5)

    respond_to do |format|
      format.html { render action: 'index' }
      format.js
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    # パスワードを変更しない場合
    delete_password_params
    @user.assign_attributes params[:user]
    if @user.save
      return redirect_to [:admin, @user], notice: '登録内容を更新しました。'
    end
    render 'edit'
  end

  private
  def delete_password_params
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].delete(:password)
        params[:user].delete(:password_confirmation)
    end
  end
end

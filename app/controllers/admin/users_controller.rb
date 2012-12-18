# coding: utf-8
class Admin::UsersController < Admin::Base
  def index
    @users = User.page(params[:page]).per(5)
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
    #return redirect_to [:admin, :users], notice: 'hello'
    condition = params[:condition]
    @users = Kaminari::paginate_array(User.retrieve_by_name_or_email condition).
      page(params[:page]).per(5)
    render 'index'
  end
end

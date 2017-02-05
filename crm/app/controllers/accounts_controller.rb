class AccountsController < ApplicationController

  def index
  @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
    # @call_log = Call_Log.new()
  end

  def new
    @account = Account.new
  end

  def edit
    @account = Account.find(params[:id])
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to accounts_path
    else
      render :new
    end
  end

  def update
    @account = Account.find(params[:id])

    if @account.update_attributes(account_params)
      redirect_to account_url(@account)
    else
      render :edit
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to accounts_url
  end

  private
  def account_params
    params.require(:account).permit(:first_name, :last_name, :phone_number, :notes)
  end
  end

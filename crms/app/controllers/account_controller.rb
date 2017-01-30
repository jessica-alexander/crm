class AccountController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account= Account.new
  end

  def edit
    @account = Account.find(params[:id])
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to accounts_url
    else
      render :new
    end
  end

  def update
    @account = Account.find(params[:id])

    if @account.update_attributes(product_params)
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
    params.require(:account).permit(:name, :phone_number, :notes)
  end
end

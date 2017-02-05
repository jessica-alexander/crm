class LeadsController < ApplicationController

def index
@leads = Lead.all
end

def show
  @lead = Lead.find(params[:id])
  @account = Account.new
end

def new
  @lead = Lead.new
  @account = Account.new
end

def edit
  @lead = Lead.find(params[:id])
end

def create
  @lead = Lead.new(lead_params)

  if @lead.save
    redirect_to leads_path
  else
    render :new
  end
end

def update
  @lead = Lead.find(params[:id])

  if @lead.update_attributes(lead_params)
    redirect_to lead_url(@lead)
  else
    render :edit
  end
end

def destroy
  @lead = Lead.find(params[:id])
  @lead.destroy
  redirect_to leads_url
end

private
def lead_params
  params.require(:lead).permit(:first_name, :last_name, :phone_number, :notes)
end
end

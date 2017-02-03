class CallLogsController < ApplicationController

  before_action :load_lead

  def index
  @call_logs = CallLog.all
  end

  def show
    @call_log = CallLog.find(params[:id])
    @lead = Lead.find(params[:lead_id])
  end

  def new
    @call_log = CallLog.new
    @lead = Lead.find(params[:lead_id])
  end

  def edit
    @call_log = CallLog.find(params[:id])
  end

  def create

    @call_log = CallLog.new(call_log_params)
    @call_log.lead = Lead.find(params[:lead_id])

    if @call_log.save
      redirect_to lead_call_logs_path(@lead)
    else
      render :new
    end
  end

  def update
    @call_log = CallLog.find(params[:id])

    if @call_log.update_attributes(call_log_params)
      redirect_to lead_call_logs_url(@lead,@call_log)
    else
      render :edit
    end
  end

  def destroy
    @call_log = CallLog.find(params[:id])
    @call_log.destroy
  end

  private
  def call_log_params
    params.require(:call_log).permit(:note, :lead_id)
  end

  def load_lead
    @lead = Lead.find(params[:lead_id])
  end
end

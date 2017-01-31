class CallLogsController < ApplicationController

  before_action :load_lead

  # def index
  # @call_logs = Call_Log.all
  # end

  def show
    @call_log = Call_Log.find(params[:id])
  end

  # def new
  #   @call_log = Call_Log.new
  # end

  # def edit
  #   @call_log = Call_Log.find(params[:id])
  # end

  def create
    @call_log = @lead.call_logs.build(call_log_params)

    if @call_log.save
      redirect_to lead_call_logs_path
    else
      render lead_path(@lead)
    end
  end

  # def update
  #   @call_log = Call_Log.find(params[:id])
  #
  #   if @call_log.update_attributes(lead_params)
  #     redirect_to lead_url(@call_log)
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @call_log = Call_Log.find(params[:id])
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

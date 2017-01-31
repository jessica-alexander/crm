class CallLogsController < ApplicationController

  def index
  @call_logs = Call_Log.all
  end

  def show
    @call_log = Call_Log.find(params[:id])
  end

  def new
    @call_log = Call_Log.new
  end

  # def edit
  #   @call_log = Call_Log.find(params[:id])
  # end

  def create
    @call_log = Call_Log.new(lead_params)

    if @call_log.save
      redirect_to lead_call_logs_path
    else
      render :new
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
    @call_log = Lead.find(params[:id])
    @call_log.destroy
    redirect_to lead_call_logs_path
  end

  private
  def call_log_params
    params.require(:call_log).permit(:date, :note)
  end
  end

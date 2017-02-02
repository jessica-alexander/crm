class AppointmentsController < ApplicationController
  before_action :load_lead

  def index
  @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
    @lead = Lead.find(params[:lead_id])
  end

  def new
    @appointment  = Appointment.new
    @lead = Lead.find(params[:lead_id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.lead = Lead.find(params[:lead_id])
    @reservation.date = DateTime.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i, params[:date][:hour].to_i, params[:date][:minute].to_i).in_time_zone('Eastern Time (US & Canada)')

    if @appointment.save
      redirect_to lead_appointment_logs_path(@lead)
    else
      render :new
    end
  end

  def update
    @appointment  = Appointment.find(params[:id])

    if  @appointment .update_attributes(lead_params)
      redirect_to appointment_url(@appointment)
    else
      render :edit
    end
  end

  def destroy
    @appointment  = CallLog.find(params[:id])
    @appointment.destroy
  end

  private
  def appointment_params
    params.require(:appointment).permit(:date, :lead_id)
  end

  def load_lead
    @lead = Lead.find(params[:lead_id])
  end
end

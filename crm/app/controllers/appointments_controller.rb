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
    # @appointment.date = DateTime.new(params[:date][:year].to_i, params[:date][:month].to_i, params[:date][:day].to_i)

    if @appointment.save
      redirect_to lead_appointment_path(@lead,@appointment)
    else
      render :new
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.lead = Lead.find(params[:lead_id])

    if  @appointment.update_attributes(appointment_params)
      redirect_to lead_appointment_path(@lead,@appointment)
    else
      render :edit
    end
  end

  def destroy
    @appointment  = Appointment.find(params[:id])
    @appointment.destroy
  end

  private
  def appointment_params
    params.require(:appointment).permit(:date, :lead_id, :time)
  end

  def load_lead
    @lead = Lead.find(params[:lead_id])
  end
end

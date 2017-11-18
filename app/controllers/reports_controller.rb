class ReportsController < ApplicationController
  def show
    report_id = params[:id]
    @report = Report.find(report_id)
  end

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    @report.pilot_id = current_pilot.id

    if @report.save
      flash[:notice] = 'Yay! Saved!'
      redirect_to new_report_path
    else
      flash[:notice] = "Error. Report not saved: #{@report.errors.messages.values}"
      redirect_to new_report_path
    end

    def update


    end

  end

  private



  def report_params
    params.require(:report).permit(:title, :message)
  end
end

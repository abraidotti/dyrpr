class ReportsController < ApplicationController
  before_action :current_report, only: [:show, :update, :delete]

  def create
    @report = Report.new(report_params)
    @report.pilot_id = current_pilot.id

    if @report.save
      flash[:notice] = 'Yay! Saved!'
      redirect_to reports_path
    else
      flash[:notice] = "Error. Report not saved: #{@report.errors.messages.values}"
      redirect_to new_report_path
    end
  end

  def show
  end

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def destroy
    current_report.destroy
    redirect_to reports_path
  end

  def update
    current_report.update(report_params)
    redirect_to report_path(current_report.id)
  end

  private

  def current_report
    report_id = params[:id]
    @report = Report.find(report_id)
  end

  def report_params
    params.require(:report).permit(:title, :message)
  end
end

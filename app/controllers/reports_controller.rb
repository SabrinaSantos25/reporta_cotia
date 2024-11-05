class ReportsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :new, :create]
  def index
    @reports = Report.all
    #render json: @reports
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to reports_path, notice: 'Report was successfully created.'
    else
      render :new
    end
  end

  private

  def report_params
    params.require(:report).permit(:title, :description, :category_id, :address_id)
  end
end
class Api::V1::CompaniesController < Api::V1::BaseController
  before_action :find_company, only: [:show, :update]

  def index
    @companies = Company.all
    render json: @companies 
  end

  def show
    render json: @company
  end

  def create
    @company = Company.new(company_params)
    
    if @company.valid?
      @company.save
      render json: @company
    else
      render json: @company.errors, status: :bad_request
    end
  end

  def update
    if @company.update(company_params)
      render json: @company
    else
      render json: @company.errors, status: :bad_request
    end
  end

  private
    def company_params
      params.require(:company).permit(:name, :business_code, :address)
    end

    def find_company
      begin
        @company ||= Company.find(params[:id])
      rescue => exception
        render json: exception.message, status: :not_found
      end
    end

end

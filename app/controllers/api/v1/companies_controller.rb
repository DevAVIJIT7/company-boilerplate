class Api::V1::CompaniesController < Api::V1::BaseController

  def index
    @companies = Company.all
    render json: @companies 
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

  private
    def company_params
      params.require(:company).permit(:name, :business_code, :address)
    end

end

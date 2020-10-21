module Mutations
  class UpdateCompanyMutation < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :attributes, Types::CompanyAttributes, required: true

    field :company, Types::CompanyType, null: true
    field :errors, Types::ValidationErrorsType, null: true

    def resolve(id:, attributes:)
      company = Company.find(id)
      company_attributes = company.attributes.symbolize_keys.except(:id, :created_at, :updated_at)
      
      if company.update(company_attributes.merge(attributes.to_h))
        { company: company }
      else
        { errors: company.errors }
      end
    end
  end
end
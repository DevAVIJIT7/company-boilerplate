module Mutations
  class CreateCompanyMutation < Mutations::BaseMutation
    argument :attributes, Types::CompanyAttributes, required: true

    field :company, Types::CompanyType, null: true
    field :errors, Types::ValidationErrorsType, null: true

    def resolve(attributes:)
      company = Company.new(attributes.to_h)
      
      if company.valid?
        company.save
        { company: company }
      else
        { errors: company.errors }
      end
    end
  end
end
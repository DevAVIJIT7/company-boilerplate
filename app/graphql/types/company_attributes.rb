module Types
  class CompanyAttributes < Types::BaseInputObject
    description "Attributes for creating or updating a company"

    argument :name, String, required: false
    argument :business_code, String, required: false
    argument :address, String, required: false
  end
end
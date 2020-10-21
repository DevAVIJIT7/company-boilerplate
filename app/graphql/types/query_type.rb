module Types
  class QueryType < Types::BaseObject
    field :companies, 
          [Types::CompanyType], 
          null: false,
          description: "All company details"

    field :company, Types::CompanyType, null: false do
      description "A company details by ID"
      argument :id, ID, required: true
    end

    def companies
      Company.all
    end

    def company(id:)
      Company.find(id)
    end
  end
end

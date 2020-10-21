module Types
  class CompanyType < Types::BaseObject
    description "Company details"
    field :id, ID, null: false
    field :name, String, null: true
    field :address, String, null: true
    field :business_code, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

module Types
  class MutationType < Types::BaseObject
    field :create_company, mutation: Mutations::CreateCompanyMutation
    field :update_company, mutation: Mutations::UpdateCompanyMutation
  end
end

class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :business_code, :address
end

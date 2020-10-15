class Company < ApplicationRecord
  validates :name, presence: true

  has_many :departments, dependent: :destroy
end
class Bill < ApplicationRecord
  belongs_to :event
  has_many :expenses, dependent: :destroy
  has_many :shares, through: :expenses
end

class Expense < ApplicationRecord
  belongs_to :bill
  has_many :shares, dependent: :destroy
  has_many :participants, through: :shares
end

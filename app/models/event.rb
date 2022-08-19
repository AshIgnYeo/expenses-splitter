class Event < ApplicationRecord
  has_many :bills, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :shares, through: :participants
  has_many :users, through: :participants

  def total
    bills.map { |bill| bill.total }.sum
  end
end

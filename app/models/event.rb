class Event < ApplicationRecord
  has_many :bills, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :shares, through: :participants

  def total

  end
end

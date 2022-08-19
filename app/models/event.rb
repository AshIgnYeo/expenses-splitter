class Event < ApplicationRecord
  has_many :bills
  has_many :participants, dependent: :destroy
  has_many :shares, through: :participants
end

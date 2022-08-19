class Share < ApplicationRecord
  belongs_to :expense
  belongs_to :participant
end

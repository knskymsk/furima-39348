class Management < ApplicationRecord

  belongs_to :user
  belongs_to :item
  has_one :purchase
  #validates :token, presence: true
end

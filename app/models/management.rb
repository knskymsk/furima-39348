class Management < ApplicationRecord
  #attr_accessor :token
  belongs_to :user
  belongs_to :item
  has_one :purchase
end

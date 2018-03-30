class Card < ApplicationRecord
  has_many :stats
  accepts_nested_attributes_for :stats
end

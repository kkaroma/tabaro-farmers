class Farmer < ApplicationRecord
  belongs_to :village
  belongs_to :parish
  has_many :crops
end

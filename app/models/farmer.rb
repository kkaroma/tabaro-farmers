class Farmer < ApplicationRecord
  belongs_to :village
  belongs_to :parish
end

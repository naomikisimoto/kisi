class TripTagRelation < ApplicationRecord
  belongs_to :trip
  belongs_to :tag
end

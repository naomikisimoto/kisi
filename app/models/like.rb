class Like < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  validates_uniqueness_of :trip_id, scope: :user_id
end

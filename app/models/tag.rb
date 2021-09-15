class Tag < ApplicationRecord
    has_many :trip_tag_relations, dependent: :destroy
    has_many :trips, through: :trip_tag_relations, dependent: :destroy
end

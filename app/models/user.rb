class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :trips, dependent: :destroy
  validates :name, presence: true 
  validates :profile, length: { maximum: 200 }
  has_many :likes, dependent: :destroy
  has_many :liked_trips, through: :likes, source: :trip

  def already_liked?(trip)
    self.likes.exists?(trip_id: trip.id)
  end
end

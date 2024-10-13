class Course < ApplicationRecord
  validates :title, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true

  has_many :videos

  scope :current, -> { where("end_at >= ?", Date.today) }
end

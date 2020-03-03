class List < ApplicationRecord
  has_many :tasks

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :color, presence: true
end

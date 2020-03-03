# frozen_string_literal: true

class List < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user
  validates :user, presence: true
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :color, presence: true
end

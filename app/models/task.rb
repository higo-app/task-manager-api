# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :list

  validates :title, presence: true
  validates :list, presence: true
  validates :due_date, format: { with: /\d{4}-\d{2}-\d{2}(Td{2}:d{2}:d{2})?/,
                                 message: 'accepts YYYY-MM-DD | YYYY-MM-DDTHH:MM:SS formats' }
end

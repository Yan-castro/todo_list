# frozen_string_literal: true

# Model representing a task.
class Task < ApplicationRecord
  validates :title, presence: true
  validates :done, inclusion: { in: [true, false] }
end

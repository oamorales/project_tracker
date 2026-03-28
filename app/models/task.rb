class Task < ApplicationRecord
  belongs_to :project

  enum status: { pending: 0, in_progress: 1, done: 2 }
  enum priority: { low: 0, medium: 1, high: 2 }

  validates :title, presence: true
  validates :priority, presence: true

  # Scope para tareas urgentes
  scope :high_priority, -> { where(priority: :high) }
  scope :pending_tasks, -> { where.not(status: :done) }
end

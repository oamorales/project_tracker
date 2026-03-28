class Project < ApplicationRecord
    has_many :tasks, dependent: :destroy

  # Estados del proyecto usando Enum
  enum status: { active: 0, completed: 1, on_hold: 2, cancelled: 3 }

  validates :title, presence: true, length: { minimum: 3 }
  validates :deadline, presence: true

  # Scope para proyectos próximos a vencer
  scope :upcoming, -> { where('deadline >= ?', Date.today).order(:deadline) }
  scope :overdue, -> { where('deadline < ?', Date.today).where.not(status: :completed) }

  def completion_percentage
    return 0 if tasks.empty?
    (tasks.where(status: :done).count.to_f / tasks.count * 100).round(2)
  end
end

class Task < ApplicationRecord

    enum :status, { pending: 0, in_progress: 1, completed: 2 }

    scope :completed, -> { where(status: :completed) }
    scope :in_progress, -> { where(status: :in_progress) }
    scope :pending, -> { where(status: :pending) }
    scope :not_completed, -> { where.not(status: :completed) }
end

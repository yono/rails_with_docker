class Task < ApplicationRecord
  validates :title, presence: true

  def done
    update(done_at: Time.current)
  end

  def done?
    done_at.present?
  end
end

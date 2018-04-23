class Patient < ApplicationRecord
  # belongs_to :user

  default_scope -> { order(created_at: :desc) }
  validates :name, presence: true, length: { maximum: 140 }
  validates :contact, presence: true, length: { maximum: 20 }
  validates :address, presence: true, length: { maximum: 140 }

end

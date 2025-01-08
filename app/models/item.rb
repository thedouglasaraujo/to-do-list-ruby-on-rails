class Item < ApplicationRecord
  belongs_to :list

  validates :description, presence: true, length: { maximum: 255 }
  validates :done, inclusion: { in: [true, false] }
end

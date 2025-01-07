class List < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 500 }
end
  
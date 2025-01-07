class List < ApplicationRecord
    has_many :items, dependent: :destroy
  
    validates :title, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 500 }
end
  
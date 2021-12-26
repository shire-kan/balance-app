class Payment < ApplicationRecord
  belongs_to :user

  validates :price, presence: true
end

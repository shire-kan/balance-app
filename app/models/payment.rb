class Payment < ApplicationRecord
  belongs_to :user

  validates :price, presence: true
  validates :type_id, presence: true
end

class Animal < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  enum status: { missing: 0, pending: 1, found: 2 }
end

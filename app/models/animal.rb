class Animal < ApplicationRecord
  belongs_to :user

  enum status: { missing: 0, pending: 1, found: 2 }
end

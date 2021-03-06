class Contract < ApplicationRecord
  extend Enumerize

  belongs_to :client

  validates :price, :status, :description, presence: true

  enumerize :status, in: [:paid, :not_paid], default: :not_paid
end

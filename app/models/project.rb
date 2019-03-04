class Project < ApplicationRecord
  belongs_to :contract

  validates :name, presence: true
end

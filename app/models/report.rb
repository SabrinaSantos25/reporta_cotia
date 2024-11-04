class Report < ApplicationRecord
  belongs_to :category
  belongs_to :address

  validates :title, :description, presence: true
end

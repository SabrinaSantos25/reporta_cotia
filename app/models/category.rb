class Category < ApplicationRecord
  has_many :reports

  validates :category, presence: true
end

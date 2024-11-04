class Address < ApplicationRecord

  validates :cep, :street, :neighbhood, :city, :number, presence: true
end

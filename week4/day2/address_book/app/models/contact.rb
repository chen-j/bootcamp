class Contact < ApplicationRecord
	validates :name, presence: true
	validates :address, presence: true
	validates :phone_number, format: { with: /\d/}
	validates :email, format: { with: /[@]/}
end

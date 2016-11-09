class Contact < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	validates :name, presence: true
	validates :address, presence: true
	validates :phone_number, format: { with: /\d/}
	validates :email, format: { with: /[@]/}
end

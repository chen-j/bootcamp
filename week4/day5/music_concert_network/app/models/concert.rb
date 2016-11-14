class Concert < ApplicationRecord
    has_many :comments
    has_attached_file :poster, :styles => { :medium => "250x368>", :thumb => "100x150#" }, :default_url => "/images/:style/poster.jpg"
    validates_attachment_content_type :poster, :content_type => /\Aimage\/.*\Z/
end

class Movie < ApplicationRecord
	belongs_to :user
	has_many :movies
	has_attached_file :image, styles: { medium: "300x400#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

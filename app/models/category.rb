class Category < ApplicationRecord
  has_many :products


  validates :name, presence: true, length: { minimum: 3 }
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
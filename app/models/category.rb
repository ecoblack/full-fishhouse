class Category < ApplicationRecord
  has_many :products
  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id"

  validates :name, presence: true, length: { minimum: 3 }
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	def to_param
	    "#{id} #{name}".to_slug.normalize(transliterations: :russian).to_s 
	end


end
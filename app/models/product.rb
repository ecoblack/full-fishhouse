class Product < ApplicationRecord

	validates :name, presence: true, length: { minimum: 3 }
	
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	belongs_to :category, required: false

	def to_param
    	"#{id} #{name}".to_slug.normalize(transliterations: :russian).to_s 
  	end
  	
end


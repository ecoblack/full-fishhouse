ActiveAdmin.register Product do
		permit_params :name, :body, :image, :category_id, :shops

		show do |t|
			attributes_table do
				row :name
				row :category_id
				row :shops
				row :body
				row :image do
					product.image? ? image_tag(product.image.url, height: '100') : content_tag(:span, "No photo yet")
				end
			end
		end

		form :html => { :enctype => "multipart/form-data" } do |f|
			f.inputs do
				f.input :name
				f.input :category_id
				f.input :shops
				f.input :body
				f.input :image, hint: f.product.image? ? image_tag(product.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			end
			f.actions
		end
end
ActiveAdmin.register Category do
		permit_params :name, :body,:parent_id, :image, :id

		show do |t|
			attributes_table do
				row :id
				row :name
				row :parent_id
				row :body
				row :image do
					category.image? ? image_tag(category.image.url, height: '100') : content_tag(:span, "No photo yet")
				end
			end
		end

		form :html => { :enctype => "multipart/form-data" } do |f|
			f.inputs do
				f.input :name
				f.input :id
				f.input :parent_id
				f.input :body
				f.input :image, hint: f.category.image? ? image_tag(category.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			end
			f.actions
		end
end
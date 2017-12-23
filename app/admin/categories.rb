ActiveAdmin.register Category do
		permit_params :name, :body,:parent_id, 

		show do |t|
			attributes_table do
				row :name
				row :parent_id
				row :body
				
			end
		end

		form :html => { :enctype => "multipart/form-data" } do |f|
			f.inputs do
				f.input :name
				f.input :parent_id
				f.input :body
			end
			f.actions
		end
end
ActiveAdmin.register Product do
	permit_params :name, :desc
show do
    attributes_table do
      row :title
      
    end
    
end
end

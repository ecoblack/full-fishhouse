json.products do
	json.array!(@products) do |product|
	json.name product.name
	json.body product_path(product)
	end
end

json.categories do
	json.array!(@categories) do |category|
	json.name category.name
	json.body category_path(category)
	end
end


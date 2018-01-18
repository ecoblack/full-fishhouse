json.products do
	json.array!(@products) do |product|
	json.name "#{product.name} <br> в категории: #{product.category.name}"
	json.url product_path(product)
	end
end

json.categories do
	json.array!(@categories) do |category|
	json.name category.name
	json.url category_path(category)
	end
end


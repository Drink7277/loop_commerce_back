json.data do
  json.array! @products do |product|
    json.partial! "product", product:
  end
end

json.meta do
  json.categories @categories
  json.total @products.total_count
end

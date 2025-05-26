json.data do
  json.array! @products do |product|
    json.partial! 'product', product:
  end
end
json.meta {}

json.array! @products do |product|
    json.id product.id
    json.code product.code
    json.name product.name
    json.sale_price product.sale_price
    json.stock product.stock
    json.stock_min product.stock_min
    json.description product.description
    json.category_id product.category_id
end

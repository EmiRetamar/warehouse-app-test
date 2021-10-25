json.array @products do |product|
    json.code product.code
    json.name product.name
    json.sale_price product.sale_price
    json.stock product.stock
    json.stockç product.stockç
    json.description product.description
    json.category_id product.category_id
end

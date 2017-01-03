json.extract! admin_product, :id, :name, :alias_name, :content, :price, :new_price, :created_at, :updated_at
json.url admin_product_url(admin_product, format: :json)
json.extract! order, :id, :email, :payment_status, :created_at, :updated_at
json.url order_url(order, format: :json)

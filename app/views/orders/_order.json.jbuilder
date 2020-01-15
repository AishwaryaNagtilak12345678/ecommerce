json.extract! order, :id, :order_no, :tracking_no, :purchase_total, :order_type, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)

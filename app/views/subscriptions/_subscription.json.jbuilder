json.extract! subscription, :id, :name, :description, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
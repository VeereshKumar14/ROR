json.extract! detail, :id, :name, :email, :created_at, :updated_at
json.url detail_url(detail, format: :json)

json.extract! password, :id, :title, :body, :user_id, :created_at, :updated_at
json.url password_url(password, format: :json)

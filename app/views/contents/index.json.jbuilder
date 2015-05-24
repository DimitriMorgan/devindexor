json.array!(@contents) do |content|
  json.extract! content, :id, :created_at, :update_at, :title, :description, :source_path, :download_path, :category, :sub_category, :role, :status
  json.url content_url(content, format: :json)
end

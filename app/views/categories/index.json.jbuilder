json.array!(@categories) do |category|
  json.extract! category, :id, :name, :img_path, :img_alt, :status
  json.url category_url(category, format: :json)
end

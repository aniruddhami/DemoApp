json.extract! newitem, :id, :title, :url, :text, :created_at, :updated_at
json.url newitem_url(newitem, format: :json)

json.extract! demoitem, :id, :title, :url, :text, :created_at, :updated_at
json.url demoitem_url(demoitem, format: :json)

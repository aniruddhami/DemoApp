json.extract! gallery, :id, :name, :discription, :images, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)

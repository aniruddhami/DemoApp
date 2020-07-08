json.extract! new_gallery, :id, :user_id, :name, :discription, :images, :created_at, :updated_at
json.url new_gallery_url(new_gallery, format: :json)

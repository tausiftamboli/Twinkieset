json.extract!(subalbum, :id, :title, :order, :created_at, :updated_at)

json.photos do
  json.array!(subalbum.photos) do |photo|
    json.extract!(photo, :id, :image_url, :order, :created_at, :updated_at)
  end
end

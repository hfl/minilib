json.array!(@resources) do |resource|
  json.extract! resource, :id, :rid
  json.url resource_url(resource, format: :json)
end

json.array!(@groups) do |group|
  json.extract! group, :id, :name, :isPublic
  json.url group_url(group, format: :json)
end

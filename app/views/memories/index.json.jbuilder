json.array!(@memories) do |memory|
  json.extract! memory, :id, :title, :description, :private, :about_id
  json.url memory_url(memory, format: :json)
end

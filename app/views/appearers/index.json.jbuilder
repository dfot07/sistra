json.array!(@appearers) do |appearer|
  json.extract! appearer, :id, :user_id, :request_property_id, :last_name, :name, :civil_status
  json.url appearer_url(appearer, format: :json)
end

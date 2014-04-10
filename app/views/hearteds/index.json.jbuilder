json.array!(@hearteds) do |hearted|
  json.extract! hearted, :id, :userx_id, :usery_id, :matched, :userx_heart_time, :usery_heart_time, :match_time, :notification_time
  json.url hearted_url(hearted, format: :json)
end

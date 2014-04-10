json.array!(@personality_categories) do |personality_category|
  json.extract! personality_category, :id, :label
  json.url personality_category_url(personality_category, format: :json)
end

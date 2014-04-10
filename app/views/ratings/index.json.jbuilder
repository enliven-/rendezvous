json.array!(@ratings) do |rating|
  json.extract! rating, :id, :personality_category_id, :rater_id, :rated_id, :score
  json.url rating_url(rating, format: :json)
end

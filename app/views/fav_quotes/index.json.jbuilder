json.array!(@fav_quotes) do |fav_quote|
  json.extract! fav_quote, :id, :text, :user_id, :source
  json.url fav_quote_url(fav_quote, format: :json)
end

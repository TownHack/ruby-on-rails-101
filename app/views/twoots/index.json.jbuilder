json.array!(@twoots) do |twoot|
  json.extract! twoot, :id, :content, :user_id
  json.url twoot_url(twoot, format: :json)
end

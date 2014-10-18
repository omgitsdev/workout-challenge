json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :name, :frequency, :wage, :duration
  json.url challenge_url(challenge, format: :json)
end

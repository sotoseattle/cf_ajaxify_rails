json.array!(@things) do |thing|
  json.extract! thing, :id, :something, :somewhat, :and_yet, :whatever, :and_a_number
  json.url thing_url(thing, format: :json)
end

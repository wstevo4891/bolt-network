json.array!(@subgenres) do |subgenre|
  json.extract! subgenre, :id
  json.url subgenre_url(subgenre, format: :json)
end

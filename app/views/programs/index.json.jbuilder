json.array!(@programs) do |program|
  json.extract! program, :id, :title, :cover
  json.url program_url(program, format: :json)
end

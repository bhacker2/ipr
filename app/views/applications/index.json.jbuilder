json.array!(@applications) do |application|
  json.extract! application, :id, :ams_id, :short_name, :category
  json.url application_url(application, format: :json)
end

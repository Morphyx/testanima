json.array!(@devicetypes) do |devicetype|
  json.extract! devicetype, :id, :type
  json.url devicetype_url(devicetype, format: :json)
end

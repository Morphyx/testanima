json.array!(@testmodels) do |testmodel|
  json.extract! testmodel, :id, :productid, :devicetype_id, :manufa, :functions
  json.url testmodel_url(testmodel, format: :json)
end

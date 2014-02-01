json.array!(@dogers) do |doger|
  json.extract! doger, :id, :name, :awesome, :wow_factor, :color
  json.url doger_url(doger, format: :json)
end

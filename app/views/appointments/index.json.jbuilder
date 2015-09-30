json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :begin_at, :end_at, :comment
  json.url appointment_url(appointment, format: :json)
end

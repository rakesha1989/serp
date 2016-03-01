json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :employee_id, :day, :full_day, :half_day
  json.url attendance_url(attendance, format: :json)
end

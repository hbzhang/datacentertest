json.array!(@t_people) do |t_person|
  json.extract! t_person, :id, :FIRST_NAME, :LAST_NAME
  json.url t_person_url(t_person, format: :json)
end

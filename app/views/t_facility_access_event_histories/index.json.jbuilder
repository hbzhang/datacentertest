json.array!(@t_facility_access_event_histories) do |t_facility_access_event_history|
  json.extract! t_facility_access_event_history, :id, :first_name, :last_name, :person_id
  json.url t_facility_access_event_history_url(t_facility_access_event_history, format: :json)
end

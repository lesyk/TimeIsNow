json.extract! event, :id, :uid, :dtstart, :dtend, :location, :description, :summary, :created_at, :updated_at
json.url event_url(event, format: :json)
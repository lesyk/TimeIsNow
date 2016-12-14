desc "Import ical"
task :task_name do
  event_file = File.open("data/work.ics")

  # Parser returns an array of events because a single file
  # can have multiple events.
  events = Icalendar::Event.parse(event_file)
  # event = events.first
  array = []
  for event in events do
    found = array.find {|x| x[:name] == event.summary}
    if found
      found[:count] += 1
    else
      array << {:name => event.summary, :count => 1 }
    end
    puts event.inspect
  end
  for a in array.sort_by{ |el| el[:count] } do
    puts a.inspect
  end
end

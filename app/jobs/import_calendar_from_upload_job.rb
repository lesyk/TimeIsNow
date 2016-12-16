class ImportCalendarFromUploadJob < ApplicationJob
  queue_as :default

  def perform(calendar)
    puts "Started"
    puts calendar.file.path

    event_file = File.open(calendar.file.path)
    events = Icalendar::Event.parse(event_file)

    array = []
    for event in events do
      puts event.inspect
      calendar.events << Event.new(
        :summary => event.summary,
        :description => event.description,
        :dtstart => event.dtstart,
        :dtend => event.dtend,
        :location => event.location,
        :uid => event.uid,
        :user_id => calendar.user_id
      )
    end
    puts "Finished"
  end
end

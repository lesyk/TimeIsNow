class AddCalendarAttach < ActiveRecord::Migration[5.0]
  def up
    add_attachment :calendars, :file
  end

  def down
    remove_attachment :calendars, :file
  end
end

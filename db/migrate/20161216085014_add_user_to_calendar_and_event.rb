class AddUserToCalendarAndEvent < ActiveRecord::Migration[5.0]
  def change
    change_table :calendars do |t|
      t.belongs_to :user, index: true
    end

    change_table :events do |t|
      t.belongs_to :user, index: true
    end
  end
end

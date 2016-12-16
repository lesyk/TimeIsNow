class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :uid
      t.string :summary
      t.string :description
      t.datetime :dtstart
      t.datetime :dtend
      t.string :location

      t.belongs_to :calendar, index: true

      t.timestamps
    end
  end
end

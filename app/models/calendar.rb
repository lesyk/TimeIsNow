class Calendar < ApplicationRecord
  has_attached_file :file
  validates_attachment_content_type :file, :content_type => ["text/calendar"]

  has_many :events
  belongs_to :user
end

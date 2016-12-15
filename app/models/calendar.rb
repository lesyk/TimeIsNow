class Calendar < ApplicationRecord
  has_attached_file :file
  # TODO: filter cal files only
  validates_attachment_content_type :file, :content_type => ["text/calendar"]
end

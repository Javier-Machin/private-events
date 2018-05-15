class User < ApplicationRecord
  has_many :events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attendances
  has_many :events_as_attendee, through: :attendances, source: "event"
end

class User < ApplicationRecord
  attr_accessor :invitation_to_delete
  has_many :events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attendances
  has_many :events_as_attendee, through: :attendances, source: "event"
  has_many :invitations, class_name: 'Invitation', foreign_key: 'invitation_sender'
  has_many :invitations_received, class_name: 'Invitation', foreign_key: 'invited_user'
end

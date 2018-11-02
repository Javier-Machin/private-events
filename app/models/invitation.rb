class Invitation < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'invitation_sender'
  belongs_to :event, class_name: 'Event', foreign_key: 'event_id'
  belongs_to :invited_user, class_name: 'User', foreign_key: 'invited_user'
end

class User < ApplicationRecord
  has_many :events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attendances
  has_many :events_as_attendee, through: :attendances, source: "event"
  has_many :invitations, class_name: 'Invitation', foreign_key: 'invitation_sender'
  has_many :invitations_received, class_name: 'Invitation', foreign_key: 'invited_user'
  validates :name,  presence: true, length: { maximum: 50 }, 
            uniqueness: { case_sensitive: true }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i                     
  validates :email, presence: true , length: { maximum: 50 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end

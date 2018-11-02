class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :attendances
  has_many :attendees, through: :attendances, source: "user"
  has_many :invitations
  scope :past, -> { where("date < ?", DateTime.now) }
  scope :future, -> { where("date > ?", DateTime.now) }

  # "past" and "future" events implementation without scopes
  
  # def self.past
  #   where("date < ?", DateTime.now).all
  # end

  # def self.future
  #   where("date > ?", DateTime.now).all
  # end

end
class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', :foreign_key => 'user_id'

  has_many :attendees, class_name: 'Attendee', foreign_key: :attended_event_id
  has_many :atteende_user, through: :attendees, source: :user
end

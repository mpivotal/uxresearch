class Participant < ApplicationRecord
  validates :email, presence: true
  MESSAGES = [
    ["Help us fix what’s broken", "...and improve what's not optimal."],
    ["You know a lot.", "we want to learn from you"], 
    ["We need you!", "to help us build great products"]
  ]
end

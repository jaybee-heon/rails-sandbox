class Message < ApplicationRecord
  belongs_to :user

  scope :read, -> { where(read: true) }
  scope :unread, -> { where(read: false) }
end

class User < ApplicationRecord
  belongs_to :status
  has_many :messages, dependent: :destroy
end

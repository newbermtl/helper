class Proposal < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :project
  belongs_to :user

  validates :pitch, presence: { message: 'You must enter a pitch' }
end

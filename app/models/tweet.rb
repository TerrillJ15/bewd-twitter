class Tweet < ApplicationRecord
    validates :user_id, presence: true

    belongs_to :user

    validates :message, presence: true, length: { minimum: 1, maximum: 140 }
end

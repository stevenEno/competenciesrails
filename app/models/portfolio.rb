class Portfolio < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    validates :user_id, presence: true
    has_one_attached :avatar
end

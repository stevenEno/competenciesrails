class Professional < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    validates :user_id, presence: true
end

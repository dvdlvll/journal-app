class Category < ApplicationRecord
    validates :name, presence: true
    validates :user_id, presence: true
    
    has_many :tasks, dependent: :destroy 
    belongs_to :user
end

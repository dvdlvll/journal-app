class Task < ApplicationRecord
    validates :category_id, presence: true
    validates :task, presence: true
    
    belongs_to :category
    belongs_to :user
end

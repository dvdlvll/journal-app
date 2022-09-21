class Task < ApplicationRecord
    validates :category_id, presence: true
end

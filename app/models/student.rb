class Student < ApplicationRecord
    validates :name, presence: true
    validates :age, comparison: { greater_than: 17}

    belongs_to :instructor
end

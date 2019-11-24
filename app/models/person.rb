class Person < ApplicationRecord
    has_many :fruits, dependent: :destroy
    validates :name, :age, presence: true
end

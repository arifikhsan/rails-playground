# frozen_string_literal: true

class Person < ApplicationRecord
  has_many :fruits, dependent: :destroy
  has_many :books, dependent: :nullify
  validates :name, :age, presence: true
end

class Fruit < ApplicationRecord
  belongs_to :person
  vefore_destroy { |record| byebug }

  # before_destory do
  #   puts 'i dont feel so good'
  # end
end

# frozen_string_literal: true

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  def setup
    @person = Person.new(name: 'a', age: 1)
  end

  test 'valid person' do
    assert @person.valid?
  end

  test 'invalid without age' do
    @person.age = nil
    refute @person.valid?, 'person is valid without a name'
    assert_not_nil @person.errors[:name], 'no validation error for name present'
  end

  test 'invalid without name' do
    @person.name = nil
    refute @person.valid?
    assert_not_nil @person.errors[:age]
  end

  test '#fruits' do
    assert_equal 1, people.first.fruits.size
  end

  test 'delete person' do
    byebug
  end
end

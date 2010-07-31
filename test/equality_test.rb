require 'test/unit'
require 'ruby-debug'

module ActiveRecord
  class Base
    def ==(other)
      self.id == other.id
    end
  end
end

require 'active_record_attributes_equality'

class User < ActiveRecord::Base
  include ActiveRecordAttributesEquality

  attr_accessor :id, :name

  def initialize(id, name)
    self.id   = id
    self.name = name
  end

  def new_record?
    self.id.nil?
  end

  def attributes
    { "id" => self.id, "name" => self.name }
  end
end

class ActiveRecordAttributesEqualityTest < Test::Unit::TestCase
  def test_attributes_equality
    user_one = User.new(nil, "John")
    user_two = User.new(nil, "John")

    assert_equal user_one, user_two
  end

  def test_fallback_to_id_comparison
    user_one = User.new(1, "John")
    user_two = User.new(1, "Jane")

    assert_equal user_one, user_two
  end
end

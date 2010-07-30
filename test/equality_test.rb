require 'test/unit'
require 'active_record_attributes_equality'

module ActiveRecord
  class Base
    def ==(other)
      self.id == other.id
    end
  end
end

class User < ActiveRecord::Base
  include ActiveRecordAttributesEquality

  attr_accessor :id, :name

  def initialize(id = nil, name = nil)
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
  def test_equality
    user_one = User.new(:name => "John")
    user_two = User.new(:name => "John")

    assert_equal user_one, user_two
  end
end

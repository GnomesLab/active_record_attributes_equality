# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY

  s.name        = "active_record_attributes_equality"
  s.version     = '1.0.1'
  s.summary     = "Forces ActiveRecord::Base equality to look into the attributes hash."

  s.authors     = ["Diogo Almeida"]
  s.email       = ["diogo.almeida@gnomeslab.com"]
  s.homepage    = "http://github.com/GnomesLab/active_record_attributes_equality/"

  s.description = "Active Record Attributes Equality is a very simple rails plugin / " +
    "gem that forces ActiveRecord to compare the model's attributes in the presence of two new records." +
    " Otherwise, it compares their IDs, just like ActiveRecord::Base#==."

  s.required_rubygems_version = ">= 1.3.7"

  s.add_dependency('activerecord', "~> 3.0.0")

  s.files        = Dir.glob("{lib}/**/*") + %w(MIT-LICENSE README.md)
  s.require_path = 'lib'
end

# -*- encoding: utf-8 -*-
lib = File.expand_path('lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "Active Record Attributes Equality"
  s.version     = '1.0.0.beta.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Diogo Almeida"]
  s.email       = ["diogo.almeida@gnomeslab.com"]
  s.homepage    = "http://github.com/GnomesLab/active_record_attributes_equality/"
  s.summary     = "Forces ActiveRecord::Base equality to look into the attributes hash."
  s.description = "Active Record Attributes Equality is a very simple rails plugin / gem that forces ActiveRecord to compare the mode's attributes in the presence of two new records."

  s.required_rubygems_version = ">= 1.3.7"

  s.add_dependency(%q<activerecord>, [">= 3.0.0.rc"])

  s.files        = Dir.glob("{bin,lib}/**/*") + %w(MIT-LICENSE README.md)
  s.require_path = 'lib'
end

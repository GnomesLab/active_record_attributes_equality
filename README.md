### Introduction

Active Record Attributes Equality is a very simple rails plugin / gem that forces ActiveRecord to compare the mode's attributes in the presence of two new records.


### Example

Consider a User model that holds the notion of users that have a name.

<pre>
  # create_table(:user, :force => true) do |t|
  #   t.string :name, null => false
  # end
  class User < ActiveRecord::Base; end

  Default ActiveRecord behavior:

  User.new(:name => "John") == User.new(:name => "John") #=> false

  Introduce ActiveRecordAttributesEquality and that same instruction will return true:

  User.new(:name => "John") == User.new(:name => "John") #=> true
</pre>


### Installing

#### As a gem (using bundler)

<pre>
gem "active_record_attributes_equality"
</pre>

#### As a Rails 3 plugin

<pre>
rails rails plugin install git@github.com:GnomesLab/active_record_attributes_equality.git
</pre>


### Feedback, questions, improvements, critics or just say hi

Feel free to fork the project and to send pull requests with your changes. Should you run into problems, please use the issue tracker made available in this Github project.


### License

Copyright (c) 2010 Gnomeslab, released under the MIT license. For more information regarding this license type please check the MIT-LICENSE file.

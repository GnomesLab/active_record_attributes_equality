# encoding: UTF-8

version = ARGV.pop

puts "Building active_record_attributes_equality v#{version}"
`gem build active_record_attributes_equality.gemspec`

puts "Pushing active_record_attributes_equality v#{version}"
`gem push active_record_attributes_equality-#{version}.gem`

puts "Deleting the gem file..."
`rm active_record_attributes_equality-#{version}.gem`

puts "DONE!"
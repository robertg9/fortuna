# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
humorists = File.readlines(Rails.root.join('db', 'humorists.u8'), "\n%\n")
humorists.map do |p|
  Post.create :content => p[0..-4], :title => Populator.words(2..5)
end
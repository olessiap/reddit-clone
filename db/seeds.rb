# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
#
# 30.times do |i|
#   User.create!(username: Faker::Name.last_name,
#               password: Faker::Number.number(6),
#               language: Faker::Team.state,
#               post_karma: Faker::Number.number(3),
#               comment_karma: Faker::Number.number(3),
#               created_at: Faker::Time.between(4.months.ago, 1.week.ago),
#               updated_at: Faker::Time.between(4.months.ago, 1.week.ago)
#               )
# end

# Post.destroy_all

# User.all.each {|user|
#   rand(2).times{
#     Post.create(
#       #user_id: user,
#       title: Faker::Hipster.paragraph(3),
#       post_type: Random.rand(0...4),
#       body: Faker::TwinPeaks.quote,
#       user: User.all[rand(User.count -1)]
#     )
#   }
# }


# Comment.destroy_all

# Post.all.each {|post|
#   rand(20).times {
#     Comment.create(
#       body: Faker::TwinPeaks.quote,
#       comment_type: Random.rand(0...4),
#       user: User.all[rand(User.count -1)],
#       post: Post.all[rand(Post.count -1)]
#       #parent_comment: Comment.id
#     )
#   }
# }


# Subreddit.destroy_all
#
# 30.times do |s|
#   Subreddit.create!(name: Faker::Space.constellation,
#               description: Faker::Space.constellation,
#               subreddit_type: Random.rand(0...4),
#               created_at: Faker::Time.between(4.months.ago, 1.week.ago),
#               updated_at: Faker::Time.between(4.months.ago, 1.week.ago)
#               )
# end
#to seed subreddit_id into post table
# Post.all.each {|po|
#     po.update_attributes(
#       subreddit_id: rand(1...5)
#     )
#   }
#
#to seed post_id into comments
Comment.all.each do |c|
  c.update_attributes(
    post_id: rand(8...25)
  )
end

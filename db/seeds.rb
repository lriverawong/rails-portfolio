# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Commodo consequat ullamco enim do magna in fugiat consequat veniam occaecat. Exercitation occaecat voluptate anim laborum officia. Aliquip ad ullamco incididunt cillum culpa duis voluptate est. Sint ut nisi laboris elit minim cillum incididunt duis dolore nostrud culpa excepteur. Consectetur duis aute labore amet eiusmod non nostrud. Ut nisi laboris sit elit culpa dolore mollit do enim sunt nostrud voluptate excepteur.",
    topic_id: Topic.last.id
    
  )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    name: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}" ,
    subtitle: "Ruby on Rails",
    body: "Enim mollit incididunt aute Lorem amet.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x150",
  )
end
puts "8 portfolio items created."

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}" ,
    subtitle: "Angular",
    body: "Enim mollit incididunt aute Lorem amet.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x150",
  )
end
puts "1 portfolio item created."

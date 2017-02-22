User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1 regular user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
    
    puts "3 Topics created"
    
 end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Boudin andouille bacon, leberkas chicken frankfurter
    strip steak fatback. T-bone boudin filet mignon meatball. Corned 
    beef strip steak tail sirloin tenderloin porchetta tongue short ribs
    turkey burgdoggen. Tail venison pig alcatra, beef ribs hamburger 
    leberkas shank salami boudin flank bresaola",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails" ,
    body: "Ribeye kevin sirloin drumstick. Tail ribeye venison,
    shankle pig tenderloin filet mignon meatloaf leberkas pork chop.
    Andouille burgdoggen strip steak meatloaf. Hamburger ribeye fatback
    ball tip beef t-bone picanha cow. Burgdoggen porchetta tongue t-bone
    corned beef pancetta.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
    )
  end
  
1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular" ,
    body: "Ribeye kevin sirloin drumstick. Tail ribeye venison,
    shankle pig tenderloin filet mignon meatloaf leberkas pork chop.
    Andouille burgdoggen strip steak meatloaf. Hamburger ribeye fatback
    ball tip beef t-bone picanha cow. Burgdoggen porchetta tongue t-bone
    corned beef pancetta.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
    )
  end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
    )
 end
 
 puts "3 technologies created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: 'test@test.com',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  name: 'Admin user',
  roles: 'site_admin'
)
puts "1 Admin user created"

User.create!(
  email: 'test2@test.com',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  name: 'regular user'
)
puts "1 Regular user created"



3.times do |topic|
  Topic.create!(
    title: "Topic: #{topic}"
  )
end

puts '3 Topics created'

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium suscipit, iusto atque dignissimos illum est possimus libero, in et modi error accusamus explicabo aliquam qui!",
    topic_id: Topic.last.id
  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end


puts '10 Blog posts created'
puts '5 Skills created'

8.times do |port|
  Portfolio.create!(
    title: "Portfolio title: #{port}",
    subtitle: "Ruby on Rails",
    body:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit provident aliquid debitis perferendis eaque dolor, nemo eius, animi expedita, soluta, quo. Doloremque nisi, minima deleniti.',
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

Portfolio.create!(
  title: "Portfolio title: angular things",
  subtitle: "Angular",
  body:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit provident aliquid debitis perferendis eaque dolor, nemo eius, animi expedita, soluta, quo. Doloremque nisi, minima deleniti.',
  main_image: "http://via.placeholder.com/600x400",
  thumb_image: "http://via.placeholder.com/350x200"
)

puts '9 Portfoilios items created'

3.times do |tech|
  Portfolio.last.technologies.create!(name: "Technology #{tech}")
end

puts '3 Technologies created'






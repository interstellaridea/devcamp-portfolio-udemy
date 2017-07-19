10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium suscipit, iusto atque dignissimos illum est possimus libero, in et modi error accusamus explicabo aliquam qui!" 
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

9.times do |port|
  Portfolio.create!(
    title: "Portfolio title: #{port}",
    subtitle: "my great service",
    body:'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit provident aliquid debitis perferendis eaque dolor, nemo eius, animi expedita, soluta, quo. Doloremque nisi, minima deleniti.',
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts '9 Portfoilios items created'
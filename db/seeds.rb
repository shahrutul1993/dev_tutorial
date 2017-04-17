3.times do |topic|
	Topic.create(
		title: "Topic #{topic}"

)
end

puts "3 Topics created"

10.times do |blog|
	Blog.create(
		title: "My blog post #{blog}",
		body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
		topic_id: Topic.last.id
)
end

puts "10 blog created"

5.times do |skill|
	Skill.create(
		title: "Rails #{skill}",
		percent_utilized: 15
)
end

puts "5 skill created"

8.times do |portfolio|
	Portfolio.create(
		title: "My portfolio title: #{portfolio}",
		subtitle: "Ruby on Rails",
		body:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
		)
end
1.times do |portfolio|
	Portfolio.create(
		title: "My portfolio title: #{portfolio}",
		subtitle: "Angular",
		body:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
		)
end
puts "9 portfolio item created"

3.times do |technology|
	Technology.create(
		name: "Technology #{technology}",
		portfolio_id: Portfolio.last.id
)
end
puts "3 technology created"

Author.all.each do |author|
  Book.create(
    title: Faker::Book.title,
    author_id: author.id
  )
end
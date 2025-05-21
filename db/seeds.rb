puts 'Cleaning the database 🧼'
Article.destroy_all

10.times do
  article = Article.new(
    title: Faker::TvShows::BreakingBad.episode,
    content: Faker::Lorem.paragraph(sentence_count: 8, supplemental: false, random_sentences_to_add: 10)
  )
  puts 'creating article'
  article.save!
end

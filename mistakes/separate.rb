author1 = Author.new("J.K. Rowling")
author2 = Author.new("Stephen King")

magazine1 = Magazine.new("The New Yorker", "News")
magazine2 = Magazine.new("Vogue", "Fashion")

author1.add_article(magazine1, "The Ickabog")
author1.add_article(magazine2, "Why Fashion Matters")

author2.add_article(magazine1, "The Importance of Journalism")

puts author1.articles.map { |article| article.title }
# => ["The Ickabog", "Why Fashion Matters"]

puts author1.magazines.map { |magazine| magazine.name }
# => ["The New Yorker", "Vogue"]

puts author1.topic_areas
# => ["News", "Fashion"]

puts magazine1.article_titles
# => ["The Ickabog", "The Importance of Journalism"]

puts magazine2.contributing_authors.map { |author| author.name }
# => ["J.K. Rowling"]

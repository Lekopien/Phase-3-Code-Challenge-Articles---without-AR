=begin
require_relative 'article'
require_relative 'author'
require_relative 'magazine'

# create instances of the classes and use the methods here
author1 = Author.new("Jane Doe")
magazine1 = Magazine.new("Fashion Weekly", "Fashion")
article1 = Article.new(author1, magazine1, "10 Tips for Dressing for Success")

puts article1.author.name # output: "Jane Doe"
puts article1.magazine.category # output: "Fashion"
puts author1.magazines.map(&:name) # output: ["Fashion Weekly"]
=end
# require necessary files
require_relative 'article'
require_relative 'author'
require_relative 'magazine'

# create instances of the classes
author1 = Author.new("Jane Doe")
author2 = Author.new("John Smith")

magazine1 = Magazine.new("Fashion Weekly", "Fashion")
magazine2 = Magazine.new("Sports Monthly", "Sports")

article1 = Article.new(author1, magazine1, "10 Tips for Dressing for Success")
article2 = Article.new(author2, magazine1, "The Latest Fashion Trends")
article3 = Article.new(author1, magazine2, "How to Improve Your Tennis Serve")
article4 = Article.new(author2, magazine2, "The History of Basketball")

# use some of the methods to test the application
puts article1.author.name # output: "Jane Doe"
puts magazine1.category # output: "Fashion"
puts author1.articles # output: [#<Article:0x00007ff2c101ef38 @author=#<Author:0x00007ff2c103cf98 ...
puts author1.magazines.map(&:name) # output: ["Fashion Weekly", "Sports Monthly"]
puts Magazine.all # output: [#<Magazine:0x00007ff2c1021d68 @category="Fashion", @contributors=[#<Author:0x00007ff2c103cf98 ...
puts magazine2.article_titles # output: ["How to Improve Your Tennis Serve", "The History of Basketball"]

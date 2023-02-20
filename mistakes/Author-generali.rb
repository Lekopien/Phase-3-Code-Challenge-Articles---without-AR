class Author
  attr_reader :name

  def initialize(name)
    @name = name
    @articles = []
  end

  def add_article(magazine, title)
    article = Article.new(self, magazine, title)
    @articles << article
    magazine.add_contributor(self)
  end

  def articles
    @articles.dup.freeze
  end

  def magazines
    @articles.map { |article| article.magazine }.uniq
  end

  def topic_areas
    self.magazines.map { |magazine| magazine.category }.uniq
  end
end

class Magazine
  attr_reader :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    @contributors = []
    self.class.all << self
  end

  def self.all
    @@all ||= []
  end

  def self.find_by_name(name)
    self.all.find { |magazine| magazine.name == name }
  end

  def name=(name)
    @name = name
  end

  def category=(category)
    @category = category
  end

  def add_contributor(author)
    @contributors << author
  end

  def contributors
    @contributors.dup.freeze
  end

  def article_titles
    Article.all.select { |article| article.magazine == self }.map { |article| article.title }
  end

  def contributing_authors
    author_counts = Hash.new(0)
    Article.all.each do |article|
      if article.magazine == self
        author_counts[article.author] += 1
      end
    end
    author_counts.select { |author, count| count > 2 }.keys
  end
end

class Article
  attr_reader :author, :magazine, :title

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    self.class.all << self
  end

  def self.all
    @@all ||= []
  end
end

=begin
class Magazine
    attr_reader :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def contributors
      Article.all.select { |article| article.magazine == self }.map { |article| article.author }
    end
  end
=end
#trial 2 of the magazine
class Magazine
    attr_reader :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def contributors
      Article.all.select { |article| article.magazine == self }.map { |article| article.author }
    end
    def self.find_by_name(name)
        self.all.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      Article.all.select { |article| article.magazine == self }.map { |article| article.title }
    end

    def contributing_authors
        Article.all.select { |article| article.magazine == self }
                   .group_by { |article| article.author }
                   .select { |author, articles| articles.size > 2 }
                   .keys
    end
  end
  

  
  
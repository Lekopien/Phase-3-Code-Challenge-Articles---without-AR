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
  
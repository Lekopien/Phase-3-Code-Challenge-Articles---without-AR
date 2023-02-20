=begin
class Article
    attr_reader :author, :magazine, :title
  
    @@all = []
  
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  end
  //This Article class is missing the instance methods author and magazine to return the author and magazine of an instance of an Article. Here's an updated version of the Article class with the missing instance methods
=end

  class Article
  attr_reader :title, :author, :magazine
  
  @@all = []

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    @author
  end

  def magazine
    @magazine
  end
end

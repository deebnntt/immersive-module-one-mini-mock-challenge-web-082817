class Book

  attr_accessor :title, :author, :wordcount

ALL = []

  def initialize(title, author, wordcount)
    @title = title
    @author = author
    @wordcount = wordcount
    ALL << self
  end

  def self.all
    ALL
  end

end

class Author

  attr_accessor :name, :books


  def initialize(name)
    @name = name
    @books = []
  end

  def books
    @books
  end

  def write_book(title, wordcount)
    new_book = Book.new(title, self, wordcount)
    @books << new_book
    book.author = self
  end

  def total_words
    @books.map do |book|
      book.wordcount
    end.inject(0){|sum,x| sum + x }
  end

  def self.most_words
    @books.author.max_by do |book|
      book.total_words
    end
  end

end

class Book
  attr_reader :author, :title, :count
  def initialize(author,title,count)
    @author = author
    @title = title
    @count = count
  end
  def to_s
    "author: #{author} title: #{title} count: #{count}"
  end
end

book_array = []
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

new_array = book_array.sort do |a,b|
  author1 = a.author.downcase
  author2 = b.author.downcase
  author1 <=> author2
end

arr_by_title = book_array.sort do |a,b|
  title1 = a.title.downcase
  title2 = b.title.downcase
  title1 <=> title2
end

arr_by_count = book_array.sort do |a,b|
  count1 = a.count
  count2 = b.count
  count1 <=> count2
end

puts "Sorting alphabetically by author"
puts new_array
puts "Sorting alphabetically by title"
puts arr_by_title
puts "Sorting by number of copies"
puts arr_by_count
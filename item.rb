class Item
  attr_reader :publish_date, :genre, :author, :source, :label

  def initialize(publish_date, id = rand(1..1000))
    @publish_date = publish_date
    @id = id
    @archieved = false
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_source(source)
    @source = source
  end

  def add_label(label)
    @label = label
  end

  def move_to_archive
    @archieved = true if can_be_archived?
  end

  def can_be_archived?
    Date.today - @publish_date > 3650
  end
end

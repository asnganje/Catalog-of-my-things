require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state, :title, :author, :genre, :label

  def initialize(title, publisher, cover_state, publish_date)
    super(publish_date)
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    if super || (@cover_state == 'bad')
      true
    else
      false
    end
  end
end

class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :review, :amazon_id, :url, :image
  belongs_to :genre

  def url
    "http://www.amazon.com/gp/product/#{amazon_id}"
  end

  def image
    "http://images.amazon.com/images/P/#{amazon_id}.01.ZTZZZZZZ.jpg"
  end
end

class Product < ApplicationRecord
  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end
  has_many:comments
  def highest_rating_comment
    comments.rating_desc.first
  end
end

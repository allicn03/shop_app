class Product < ApplicationRecord

  validates :name, presence: true
  has_many  :comments

  def self.search(search_term)
    if Rails.env.development? #added for search in production
      Product.where("name LIKE ?", "%#{search_term}%")
    else #for search in production
      Product.where("name ilike ?", "%#{search_term}%") #for search in production
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  #def lowest_rating_comment
    #comments.rating_asc.first
  #end

  def average_rating
    comments.average(:rating).to_f
  end
end
end

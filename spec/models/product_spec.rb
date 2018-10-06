require 'rails_helper'

describe Product do
  let(:product) { Product.create!(name: "Vintage Bike") }
  let(:user) { User.create!(email: "jenniferdoe@example.com", password:"123456")}

  before do
    product.comments.create!(rating: 1, user: user, body: "Awful bike!")
    product.comments.create!(rating: 3, user: user, body: "OK bike!")
    product.comments.create!(rating: 5, user: user, body: "Great bike!")


    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end
  end

  context "is not valid without a name" do
    let(:product) { Product.new(description: "Nice bike") }

    it "is not valid without a name" do
      expect(Product.new(description: "Nice bike")).not_to be_valid
    end
  end

end

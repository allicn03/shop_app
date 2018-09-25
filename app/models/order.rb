class Order < ActiveRecord::Base #prior this line was <ApplicationRecord
  belongs_to :product
  belongs_to :user
end

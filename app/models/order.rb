class Order < ApplicationRecord#::Base #prior this line was <ApplicationRecord
  belongs_to :product
  belongs_to :user
end

class Content < ActiveRecord::Base
  has_one :category
  has_many :links
end

class Category < ActiveRecord::Base
  has_many :movies
  validates_presence_of :name
end

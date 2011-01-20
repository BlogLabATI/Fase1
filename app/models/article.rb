class Article < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  validates_uniqueness_of :title
end

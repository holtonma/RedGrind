class Category < ActiveRecord::Base
  has_many :screencast_categories
  has_many :screencasts, :through => :screencast_categories
end

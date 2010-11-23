class Screencast < ActiveRecord::Base
  has_many :screencast_categories
  has_many :categories, :through => :screencast_categories
  
  has_many :screencast_tags
  has_many :tags, :through => :screencast_tags
  
  has_many :authorships
  
  has_many :movie_files
  
  accepts_nested_attributes_for :movie_files
  
  
end

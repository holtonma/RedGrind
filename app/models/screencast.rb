class Screencast < ActiveRecord::Base
  has_many :screencast_categories
  has_many :categories, :through => :screencast_categories
  
  has_many :screencast_tags
  has_many :tags, :through => :screencast_tags
  
  has_many :authorships
  
  has_many :movie_files
  has_many :line_items
  
  accepts_nested_attributes_for :movie_files
  
  before_destroy :ensure_not_referenced_by_any_line_item
  
  def ensure_not_referenced_by_any_line_item
    if line_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
    
  end
  
end
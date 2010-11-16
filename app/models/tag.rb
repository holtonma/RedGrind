class Tag < ActiveRecord::Base
  has_many :screencast_tags
  has_many :screencasts, :through => :screencast_tags
end

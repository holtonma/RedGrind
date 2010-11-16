class ScreencastCategory < ActiveRecord::Base
  belongs_to :screencast
  belongs_to :category
end

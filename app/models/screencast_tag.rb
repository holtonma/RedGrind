class ScreencastTag < ActiveRecord::Base
  belongs_to :screencast
  belongs_to :tag
end

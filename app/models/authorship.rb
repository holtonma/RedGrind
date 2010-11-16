class Authorship < ActiveRecord::Base
  belongs_to :user
  belongs_to :screencast
end

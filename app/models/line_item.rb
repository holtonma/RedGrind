class LineItem < ActiveRecord::Base
  belongs_to :screencast
  belongs_to :cart
end

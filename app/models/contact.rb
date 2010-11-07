class Contact
  include Mongoid::Document
  field :name #:type => String (default)
  field :phone
  field :budget
  field :message
  field :email
  field :company
  field :deadline, :type => Date
  
  validates_presence_of :name, :email
  
end

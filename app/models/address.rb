class Address < ActiveRecord::Base
  has_many :messages
end

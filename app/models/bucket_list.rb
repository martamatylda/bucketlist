class BucketList < ActiveRecord::Base
  # attr_accessor :title, :subtitle
  has_many :items
end

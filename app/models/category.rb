class Category < ActiveRecord::Base 
  # has_ancestry line make sures that entered sub category has parent category or not. this is the ancestry gem functionality
  has_ancestry
end

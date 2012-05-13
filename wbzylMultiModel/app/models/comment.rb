class Comment < ActiveRecord::Base
  belongs_to :post
  validates :content, :length => { :minimum => 4 }
end

class Comment < ActiveRecord::Base
  attr_accessible :body
  belongs_to :topic
end

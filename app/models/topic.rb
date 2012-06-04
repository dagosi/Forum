class Topic < ActiveRecord::Base
  attr_accessible :author, :title, :body
  has_many :comments, dependent: :destroy
end

class Topic < ActiveRecord::Base
  attr_accessible :author, :title
  has_many :comments, dependent: :destroy
end

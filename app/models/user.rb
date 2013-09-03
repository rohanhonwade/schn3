class User < ActiveRecord::Base
  has_many :interests
  has_many :articles, through: :interests
end

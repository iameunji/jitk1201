class Post < ActiveRecord::Base
	serialize :date, Array

	has_many :applies
	has_many :users, :through => :applies
	has_many :comments

end

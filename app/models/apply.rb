class Apply < ActiveRecord::Base

	serialize :users, Array


	belongs_to :user
	belongs_to :post

end

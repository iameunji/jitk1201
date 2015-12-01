class Post < ActiveRecord::Base
	serialize :date, Array

	mount_uploader :img, ClassimgUploader


	has_many :applies
	has_many :users, :through => :applies
	has_many :comments

end

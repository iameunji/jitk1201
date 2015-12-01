class Admin < ActiveRecord::Base
	serialize :class_text, Array

	mount_uploader :intro_image, IntroUploaderUploader

end

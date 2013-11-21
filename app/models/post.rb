class Post < ActiveRecord::Base
	
	belongs_to :user 
	
	default_scope -> { order('created_at DESC') }

	validates :user_id, presence: true


  attr_accessible :content, :user_id , :image , :public

  mount_uploader :image, ImageUploader

end
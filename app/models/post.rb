class Post < ActiveRecord::Base
	validates :title, uniqueness: true
end

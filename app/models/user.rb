class User < ActiveRecord::Base
	attr_accessible :name, :email

	validates :name, :presence => true, :length => {:maximum => 50}
	email_regrex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, :presence => true, 
	:format => {:with => email_regrex},
	:uniqueness => { :case_sensitive => false }
end

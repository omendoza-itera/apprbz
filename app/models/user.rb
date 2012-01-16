class User < ActiveRecord::Base
	validates_uniqueness_of :username

	has_many :companies
	
	def self.authenticate(username, password)
		user = User.find_by_mail(username)
		#unless user && User.authenticate(password)
		if user.password != password
			raise "Username or password invalid"
		end
		user
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice => "Come back soon!"
	end
end

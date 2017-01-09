module AdministradorHelper
	def sign_in(user)
		administrador[:user_id] = user.user_id
		self.current_user = user
	end

	def current_user = (user)
		@current_user = user
	end

	def current_user
		@current_user ||= User.find(administrador[:user_id]) if administrador[:user_id]
	end

	def signed_in?
		!current_user.nil?
	end

	def sign_out
		administrador[:user_id] = nil
		self.current_user = nil
	end

	def current_user?(user)
		user == current_user
	end

	def deny_access
		redirect_to signin_path, :notice => " registrese"
		
	end
end

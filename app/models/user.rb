class User < ActiveRecord::Base
  has_secure_password
  attr_accessor :has_secure_password
  attr_accessible :nombre, :apellido, :email, :password, :password_confirmation
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i 
  validates :nombre, :presence => true, :length => { :maximum => 50}
  validates :apellido, :presence => true, :length => { :maximum => 50}
  validates :email, :presence => true, :format => { :with => email_regex}, :uniqueness => { :case_sensitive => false}
  validates :password, :presence => true, :confirmation => true, :length => { :within => 4..40}
  before_save :encrypt_password

  def has_password?(submitted_password)
  	encrypt_password == encrypt(submitted_password)
  end 

  def self.authenticate(email, submitted_password)
  	user = find_by_email(email)
  	return nil if user.nil?
  	return user if user.has_password?(submitted_password)
  end
  
  private
    def encrypt_password
  	  self.salt = Digest::SHA2.hexdigest("#{Time.now.utc}--#{password}") 
  	  self.encrypted_password = encrypt(password)
  	end
  	def encrypt(pass)
  		Digest::SHA2.hexdigest("#{self.salt}--#{pass}")
  	end		
  end
  
  def to_s
  	"#{nombre} #{apellido}"
  end
end

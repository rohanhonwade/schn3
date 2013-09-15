class User < ActiveRecord::Base
  has_many :interests
  has_many :articles, through: :interests
  before_save {self.email=email}
  before_create :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence:true, length: {maximum: 20}
  validates :email, presence:   true,
		    format:     { with: VALID_EMAIL_REGEX },
		    uniqueness: { case_sensitive: false }
  
   
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
  
  has_secure_password
  validates :password, length: { minimum: 1 }
end

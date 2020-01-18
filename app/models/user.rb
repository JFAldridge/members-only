class User < ApplicationRecord
  attr_accessor :remember_token
  before_create :set_first_remember_digest
  has_secure_password

  def User.new_token
  SecureRandom.urlsafe_base64 
  end

  def User.generate_digest(string)
    Digest::SHA1.hexdigest string
  end


  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.generate_digest(remember_token))
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  private
    def set_first_remember_digest
      digest = User.generate_digest(User.new_token)
      self.remember_digest = digest
    end 
    
  
end

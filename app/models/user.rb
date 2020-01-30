class User < ApplicationRecord
  # == Constants ============================================================

  # == Attributes ===========================================================
  attr_accessor :remember_token
  # == Extensions ===========================================================

  # == Relationships ========================================================
  has_many :posts
  # == Validations ==========================================================
  has_secure_password
  # == Scopes ===============================================================

  # == Callbacks ============================================================
  before_create :set_first_remember_digest
  # == Class Methods ========================================================
  def User.new_token
    SecureRandom.urlsafe_base64 
  end
  
  def User.generate_digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  # == Instance Methods =====================================================
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.generate_digest(remember_token))
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  def validate_token(token)
    User.generate_digest(token) == :remember_digest
  end

  private
    def set_first_remember_digest
      digest = User.generate_digest(User.new_token)
      self.remember_digest = digest
    end 
    
end

class User < ActiveRecord::Base
  # Carrierwave Avatar Uploader
  mount_uploader :avatar, AvatarUploader 
  
  has_many :user_groups
  has_many :groups, :through => :user_groups
  
  has_many :account_subscriptions
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :avatar
  # attr_accessible :title, :body
end

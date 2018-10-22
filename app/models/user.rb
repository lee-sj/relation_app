class User < ApplicationRecord
  acts_as_follower
  acts_as_followable
  has_one :profile, dependent: :destroy  
  has_many :articles
  has_many :comments
  has_many :likes
  has_many :l_articles, through: :likes, source: :article
  
  # l_articles 를 하면 article 값이 나오는데 그 값의 기준은 likes 이다. 
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

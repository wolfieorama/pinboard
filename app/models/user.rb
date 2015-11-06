class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pins
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 def self.search(query)
   # where(:user, query) -> This would return an exact match of the query
   where("title like ?", "%#{query}%")
 end
end

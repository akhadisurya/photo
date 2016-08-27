class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def self.search(search)
           where("name LIKE ?", "%#{search}%")
           # where("content LIKE ?", "%#{search}%")
    end
end

class User < ApplicationRecord
  enum role: {
    basic: 0,
    professional: 1,
    teacher: 2,
    student: 3,
    admin: 4
  }


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :competencies
end

class User < ApplicationRecord
  enum role: {
    basic: 0,
    teacher: 1,
    student: 2,
    professional: 3,
    school_lead: 4,
    admin: 5
  }


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attribute :user_type, type: String
  attribute :name, type: String

  has_many :professionals
  has_many :portfolios
  #has_many :projects
  #has_many :competencies
end

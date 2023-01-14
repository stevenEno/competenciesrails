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

  after_create :create_admin, if: :admin?
  after_create :create_teacher, if: :teacher?
  after_create :create_student, if: :student?

  attribute :user_type, type: String
  attribute :name, type: String
  attribute :school, type: String

  has_one :admin, dependent: :destroy
  has_one :teacher, dependent: :destroy
  has_one :student, dependent: :destroy

  has_many :professionals
  has_many :portfolios
  has_many :projects

  def admin?
    self.user_type == 'admin'
  end

  def teacher?
    self.user_type == 'teacher'
  end

  def student?
    self.user_type == 'student'
  end

  private

  def create_admin
    Admin.create(user_id: self.id)
  end

  def create_teacher
    Teacher.create(user_id: self.id)
  end

  def create_student
    Student.create(user_id: self.id)
  end
end

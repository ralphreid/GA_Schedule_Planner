class User < ActiveRecord::Base
  
  attr_accessible :roles, :full_name, :first_name, :last_name, :password, :password_confirmation, :email
  has_secure_password

  has_many :authorizations
  has_many :roles, :through => :authorizations
  has_many :enrollments, foreign_key: 'student_id'
  has_many :lessons, :through => :enrollments
  has_many :allocations, foreign_key: 'instructor_id'
  has_many :lessons, :through => :allocations
  belongs_to :course

  # def is?(role)
  #   roles.include?(role.to_s)
  # end

  # Getter
  def full_name
    [first_name, last_name].join(' ')
  end

  # Setter
  def full_name=(name)
    split = name.split
    self.first_name = split.first
    self.last_name = split.last
  end

end
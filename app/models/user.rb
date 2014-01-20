class User < ActiveRecord::Base

  ROLES = %w[employee sub-lead team-lead hr admin]

  ## Devise Modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Associations
  has_many :tasks_as_assignee, foreign_key: 'assignee_id', class_name: 'Task'
  has_many :tasks_as_report_person, foreign_key: 'report_person_id', class_name: 'Task'
  has_many :tasks_closed_by_me, foreign_key: 'closed_by_id', class_name: 'Task'
  has_and_belongs_to_many :tasks
  has_many :comments

  def name
    first_name + ' ' + last_name
  end

  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def is?(role)
    roles.include?(role.to_s)
  end

  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
end

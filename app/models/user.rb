class User < ActiveRecord::Base

  ## Devise Modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Associations
  has_many :tasks_as_assignee, foreign_key: 'assignee_id', class_name: 'Task'
  has_many :tasks_as_report_person, foreign_key: 'report_person_id', class_name: 'Task'
  has_many :tasks_closed_by_me, foreign_key: 'closed_by_id', class_name: 'Task'
  has_and_belongs_to_many :tasks
  has_many :comments
end

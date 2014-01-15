class User < ActiveRecord::Base

  ## Devise Modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Associations
  has_many :assigned_tasks, foreign_key: 'assignee_id', class_name: 'Task'
  has_many :reported_tasks, foreign_key: 'assigner_id', class_name: 'Task'
  has_many :scores
end

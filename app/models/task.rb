class Task < ActiveRecord::Base
  belongs_to :assignee, foreign_key: 'assignee_id', class_name: 'User'
  belongs_to :report_person, foreign_key: 'report_person_id', class_name: 'User'
  has_and_belongs_to_many :users
end

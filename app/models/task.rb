class Task < ActiveRecord::Base

  ## Associations
  acts_as_taggable
  belongs_to :assignee, class_name: 'User', foreign_key: 'assignee_id'
  belongs_to :assigner, class_name: 'User', foreign_key: 'assigner_id'
  has_one :score
  has_many :comments, as: :commentable
end

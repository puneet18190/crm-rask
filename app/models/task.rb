class Task < ActiveRecord::Base
  belongs_to :assignee, foreign_key: 'assignee_id', class_name: 'User'
  belongs_to :report_person, foreign_key: 'report_person_id', class_name: 'User'
  has_and_belongs_to_many :users

  PRIORITY = {"L" => 3, "M" => 2, "H" => 1}

  def estimate_time=(et)
    time_form = et.to_time
    self[:estimate_time] = (time_form.hour * 60) + time_form.min
  end
  
  def estimate_time
    hours = self[:estimate_time] / 60
    minutes = self[:estimate_time] - (hours * 60)
    "#{hours}:#{minutes} hrs"
  end
end

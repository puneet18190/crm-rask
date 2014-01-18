class TasksUsers < ActiveRecord::Migration
  def change
    create_table :tasks_users, id: false do |t|
      t.references :task
      t.references :user
    end
  end
end

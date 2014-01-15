class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :assignee, index: true
      t.references :assigner, index: true
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.boolean :is_open, default: true
      t.integer :reported_back, default: 0

      t.timestamps
    end
  end
end

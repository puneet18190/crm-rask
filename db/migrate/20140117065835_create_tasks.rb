class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, index: true
      t.text :description
      t.integer :estimate_time
      t.integer :actual_time
      t.boolean :is_open
      t.datetime :closed_at
      t.references :closed_by
      t.references :assignee, index: true
      t.references :report_person, index: true
      t.integer :rating

      t.timestamps
    end
  end
end

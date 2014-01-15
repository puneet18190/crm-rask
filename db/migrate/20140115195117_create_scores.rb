class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.references :user, index: true
      t.references :task, index: true
      t.integer :grade
      t.text :description

      t.timestamps
    end
  end
end

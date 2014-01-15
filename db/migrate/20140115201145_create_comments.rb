class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.text :description
      t.references :commentable, polymorphic: true
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end

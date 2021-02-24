class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :priority
      t.integer :status
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

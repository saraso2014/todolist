class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status
      t.references :project, foreign_key: true
      t.datetime :due_date
      t.references :priority, foreign_key: true

      t.timestamps
    end
  end
end

class RemovepriorityFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :priority_id
  end
end

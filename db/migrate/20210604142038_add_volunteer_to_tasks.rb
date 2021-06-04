class AddVolunteerToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :volunteer, :integer
  end
end

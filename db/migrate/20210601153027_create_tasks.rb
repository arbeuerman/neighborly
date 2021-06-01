class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :duration
      t.string :category
      t.boolean :has_volunteer

      t.timestamps
    end
  end
end

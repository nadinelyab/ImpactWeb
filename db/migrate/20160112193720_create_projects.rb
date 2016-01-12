class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :target_area
      t.integer :num_members

      t.timestamps null: false
    end
  end
end

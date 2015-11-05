class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :est_time
      t.string :cost
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

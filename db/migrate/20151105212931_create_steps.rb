class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :description
      t.integer :rank
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

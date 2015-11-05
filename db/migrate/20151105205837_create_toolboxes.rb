class CreateToolboxes < ActiveRecord::Migration
  def change
    create_table :toolboxes do |t|
      t.string :item
      t.string :cost
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

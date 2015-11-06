class ChangeStepDescriptionToText < ActiveRecord::Migration
  def change
  	change_table :steps do |t|
  		t.change :description, :text
  	end
  end
end

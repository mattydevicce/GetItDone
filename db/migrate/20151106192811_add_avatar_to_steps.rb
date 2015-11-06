class AddAvatarToSteps < ActiveRecord::Migration
  def self.up
    add_attachment :steps, :step_pic
  end

  def self.down
    remove_attachment :steps, :step_pic
  end
end

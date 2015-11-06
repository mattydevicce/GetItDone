class AddAvatarToProjects < ActiveRecord::Migration
  def self.up
    add_attachment :projects, :project_pic
  end

  def self.down
    remove_attachment :projects, :project_pic
  end
end

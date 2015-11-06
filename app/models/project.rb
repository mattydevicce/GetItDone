class Project < ActiveRecord::Base
  belongs_to :user
  has_many :steps

  has_attached_file :project_pic
  validates_attachment_content_type :project_pic, :content_type => /\Aimage\/.*\Z/
end

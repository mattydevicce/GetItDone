class Project < ActiveRecord::Base
  belongs_to :user
  has_many :steps

  validates_attachment_content_type :project_pic, :content_type => /\Aimage\/.*\Z/
end

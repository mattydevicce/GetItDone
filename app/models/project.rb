class Project < ActiveRecord::Base
  belongs_to :user
  has_many :steps

  has_attached_file :project_pic, styles: {
    thumb: '100x100>',
    square: '1000x1000>',
    medium: '1000x10000>'
  }
  validates_attachment_content_type :project_pic, :content_type => /\Aimage\/.*\Z/
end

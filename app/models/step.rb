class Step < ActiveRecord::Base
  belongs_to :project

  has_attached_file :step_pic, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  validates_attachment_content_type :step_pic, :content_type => /\Aimage\/.*\Z/  
end

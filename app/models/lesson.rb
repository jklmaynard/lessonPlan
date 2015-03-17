class Lesson < ActiveRecord::Base
  belongs_to :course
  validates :name, :presence => true
  validates :text, :presence => true
end

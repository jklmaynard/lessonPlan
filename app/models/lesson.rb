class Lesson < ActiveRecord::Base
  belongs_to :course
  validates :name, :presence => true
  validates :text, :presence => true

  def next
    Lesson.find(self.id + 1)
  end
end

require 'rails_helper'

describe Lesson do
  context '#next' do
    it "links to the next lesson" do
      current_lesson = Lesson.create({:name => 'lesson1', :text => "dog", :id => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :text => "cat", :id => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end
end

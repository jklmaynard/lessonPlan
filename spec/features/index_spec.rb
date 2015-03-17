require 'rails_helper'

describe "the link to lesson process" do
  it "links to the clicked lesson" do
    course = Course.create(name: "course")
    lesson = course.lessons.create(name: "foo", text: "lah-dee-dah")
    visit courses_path
    click_on 'foo'
    expect(page).to have_content 'lah-dee-dah'
  end
end

require 'rails_helper'

RSpec.describe "diaries/edit", type: :view do
  before(:each) do
    @diary = assign(:diary, Diary.create!())
  end

  it "renders the edit diary form" do
    render

    assert_select "form[action=?][method=?]", diary_path(@diary), "post" do
    end
  end
end

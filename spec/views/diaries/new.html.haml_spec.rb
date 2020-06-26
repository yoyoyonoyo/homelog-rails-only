require 'rails_helper'

RSpec.describe "diaries/new", type: :view do
  before(:each) do
    assign(:diary, Diary.new())
  end

  it "renders new diary form" do
    render

    assert_select "form[action=?][method=?]", diaries_path, "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "diaries/index", type: :view do
  before(:each) do
    assign(:diaries, [
      Diary.create!(),
      Diary.create!()
    ])
  end

  it "renders a list of diaries" do
    render
  end
end

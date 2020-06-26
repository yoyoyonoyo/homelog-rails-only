require 'rails_helper'

RSpec.describe "diaries/show", type: :view do
  before(:each) do
    @diary = assign(:diary, Diary.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

require 'rails_helper'

RSpec.describe "parises/index", type: :view do
  before(:each) do
    assign(:parises, [
      Parise.create!(),
      Parise.create!()
    ])
  end

  it "renders a list of parises" do
    render
  end
end

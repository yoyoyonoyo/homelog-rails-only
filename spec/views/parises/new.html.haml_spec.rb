require 'rails_helper'

RSpec.describe "parises/new", type: :view do
  before(:each) do
    assign(:parise, Parise.new())
  end

  it "renders new parise form" do
    render

    assert_select "form[action=?][method=?]", parises_path, "post" do
    end
  end
end

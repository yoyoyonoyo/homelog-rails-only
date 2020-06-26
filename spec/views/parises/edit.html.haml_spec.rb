require 'rails_helper'

RSpec.describe "parises/edit", type: :view do
  before(:each) do
    @parise = assign(:parise, Parise.create!())
  end

  it "renders the edit parise form" do
    render

    assert_select "form[action=?][method=?]", parise_path(@parise), "post" do
    end
  end
end

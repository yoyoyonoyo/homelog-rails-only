require 'rails_helper'

RSpec.describe "parises/show", type: :view do
  before(:each) do
    @parise = assign(:parise, Parise.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

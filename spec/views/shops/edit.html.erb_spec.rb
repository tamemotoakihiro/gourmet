require 'spec_helper'

describe "shops/edit" do
  before(:each) do
    @shop = assign(:shop, stub_model(Shop))
  end

  it "renders the edit shop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do
    end
  end
end

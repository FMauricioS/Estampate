require 'rails_helper'

RSpec.describe "shirts/index", type: :view do
  before(:each) do
    assign(:shirts, [
      Shirt.create!(
        :size => "Size",
        :price => "9.99",
        :quantity => 1,
        :description => "MyText",
        :photo => "Photo"
      ),
      Shirt.create!(
        :size => "Size",
        :price => "9.99",
        :quantity => 1,
        :description => "MyText",
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of shirts" do
    render
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "shirts/new", type: :view do
  before(:each) do
    assign(:shirt, Shirt.new(
      :size => "MyString",
      :price => "9.99",
      :quantity => 1,
      :description => "MyText",
      :photo => "MyString"
    ))
  end

  it "renders new shirt form" do
    render

    assert_select "form[action=?][method=?]", shirts_path, "post" do

      assert_select "input#shirt_size[name=?]", "shirt[size]"

      assert_select "input#shirt_price[name=?]", "shirt[price]"

      assert_select "input#shirt_quantity[name=?]", "shirt[quantity]"

      assert_select "textarea#shirt_description[name=?]", "shirt[description]"

      assert_select "input#shirt_photo[name=?]", "shirt[photo]"
    end
  end
end

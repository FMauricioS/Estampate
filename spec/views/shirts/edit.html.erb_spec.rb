require 'rails_helper'

RSpec.describe "shirts/edit", type: :view do
  before(:each) do
    @shirt = assign(:shirt, Shirt.create!(
      :size => "MyString",
      :price => "9.99",
      :quantity => 1,
      :description => "MyText",
      :photo => "MyString"
    ))
  end

  it "renders the edit shirt form" do
    render

    assert_select "form[action=?][method=?]", shirt_path(@shirt), "post" do

      assert_select "input#shirt_size[name=?]", "shirt[size]"

      assert_select "input#shirt_price[name=?]", "shirt[price]"

      assert_select "input#shirt_quantity[name=?]", "shirt[quantity]"

      assert_select "textarea#shirt_description[name=?]", "shirt[description]"

      assert_select "input#shirt_photo[name=?]", "shirt[photo]"
    end
  end
end

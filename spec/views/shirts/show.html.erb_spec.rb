require 'rails_helper'

RSpec.describe "shirts/show", type: :view do
  before(:each) do
    @shirt = assign(:shirt, Shirt.create!(
      :size => "Size",
      :price => "9.99",
      :quantity => 1,
      :description => "MyText",
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Photo/)
  end
end

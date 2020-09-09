require 'rails_helper'

RSpec.describe "product_tags/show", type: :view do
  before(:each) do
    @product_tag = assign(:product_tag, ProductTag.create!(
      pid: 2,
      pcategory: "Pcategory",
      pgroup: "Pgroup",
      pcode: "Pcode",
      pdescription: "Pdescription",
      ptag: "Ptag"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Pcategory/)
    expect(rendered).to match(/Pgroup/)
    expect(rendered).to match(/Pcode/)
    expect(rendered).to match(/Pdescription/)
    expect(rendered).to match(/Ptag/)
  end
end

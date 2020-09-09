require 'rails_helper'

RSpec.describe "product_tags/index", type: :view do
  before(:each) do
    assign(:product_tags, [
      ProductTag.create!(
        pid: 2,
        pcategory: "Pcategory",
        pgroup: "Pgroup",
        pcode: "Pcode",
        pdescription: "Pdescription",
        ptag: "Ptag"
      ),
      ProductTag.create!(
        pid: 2,
        pcategory: "Pcategory",
        pgroup: "Pgroup",
        pcode: "Pcode",
        pdescription: "Pdescription",
        ptag: "Ptag"
      )
    ])
  end

  it "renders a list of product_tags" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Pcategory".to_s, count: 2
    assert_select "tr>td", text: "Pgroup".to_s, count: 2
    assert_select "tr>td", text: "Pcode".to_s, count: 2
    assert_select "tr>td", text: "Pdescription".to_s, count: 2
    assert_select "tr>td", text: "Ptag".to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "product_tags/edit", type: :view do
  before(:each) do
    @product_tag = assign(:product_tag, ProductTag.create!(
      pid: 1,
      pcategory: "MyString",
      pgroup: "MyString",
      pcode: "MyString",
      pdescription: "MyString",
      ptag: "MyString"
    ))
  end

  it "renders the edit product_tag form" do
    render

    assert_select "form[action=?][method=?]", product_tag_path(@product_tag), "post" do

      assert_select "input[name=?]", "product_tag[pid]"

      assert_select "input[name=?]", "product_tag[pcategory]"

      assert_select "input[name=?]", "product_tag[pgroup]"

      assert_select "input[name=?]", "product_tag[pcode]"

      assert_select "input[name=?]", "product_tag[pdescription]"

      assert_select "input[name=?]", "product_tag[ptag]"
    end
  end
end

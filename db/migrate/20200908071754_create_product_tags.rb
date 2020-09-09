class CreateProductTags < ActiveRecord::Migration[5.1]
  def change
    create_table :product_tags do |t|
      t.integer :pid
      t.string :pcategory
      t.string :pgroup
      t.string :pcode
      t.string :pdescription
      t.string :ptag

      t.timestamps
    end
  end
end

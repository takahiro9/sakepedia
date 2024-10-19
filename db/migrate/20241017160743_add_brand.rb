class AddBrand < ActiveRecord::Migration[7.2]
  def change
    create_table :brands, id: :uuid do |t|
      t.string :brand_name, null: false

      t.timestamps
    end
    add_reference :sakes, :brand, null: false, foreign_key: true, type: :uuid
  end
end

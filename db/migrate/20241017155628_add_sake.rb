class AddSake < ActiveRecord::Migration[7.2]
  def change
    create_table :sakes, id: :uuid do |t|
      t.string :product_name, null: false
      t.float :alcohol, null: false
      t.string :rice
      t.integer :rice_polish_ratio
      t.string :yeast
      t.float :acidity
      t.integer :sake_meter_value

      t.timestamps
    end
  end
end

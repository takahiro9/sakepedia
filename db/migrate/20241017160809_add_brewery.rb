class AddBrewery < ActiveRecord::Migration[7.2]
  def change
    create_table :breweries, id: :uuid do |t|
      t.string :brewery_name, null: false

      t.timestamps
    end
    add_reference :brands, :brewery, null: false, foreign_key: true, type: :uuid
  end
end

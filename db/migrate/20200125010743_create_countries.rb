class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :country
      t.string :truth_uuid

      t.timestamps
    end
  end
end

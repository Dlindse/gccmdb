class CreateDataSources < ActiveRecord::Migration[6.0]
  def change
    create_table :data_sources do |t|
      t.string :source
      t.string :truth_uuid

      t.timestamps
    end
  end
end

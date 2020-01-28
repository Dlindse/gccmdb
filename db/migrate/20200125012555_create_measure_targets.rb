class CreateMeasureTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :measure_targets do |t|
      t.string :target
      t.string :truth_uuid

      t.timestamps
    end
  end
end

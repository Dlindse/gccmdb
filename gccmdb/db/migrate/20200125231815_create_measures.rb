class CreateMeasures < ActiveRecord::Migration[6.0]
  def change
    create_table :measures do |t|
      t.string :agency
      t.string :city
      t.string :country_id
      t.string :country_region
      t.string :data_source_id
      t.string :description
      t.string :ghgs_affected
      t.string :impact_evaluation
      t.string :impact_on_eu_ets_esd_or_lulucf_emissions
      t.string :jurisdiction
      t.string :link
      t.string :name
      t.float :percent_private_funded
      t.integer :measure_financing_period_start
      t.string :measure_financing_quantity
      t.integer :measure_implementation_period_start_year
      t.integer :measure_implementation_period_end_year
      t.string :measure_status
      t.string :measure_targets, array:true, default: []
      t.string :measure_type
      t.integer :measure_written_year
      t.string :related_documents_text
      t.string :related_documents_url
      t.string :related_to_eu_policy
      t.boolean :related_to_eu_policy_boolean
      t.string :related_to_neeap_policy
      t.string :related_to_neeap_policy_boolean
      t.float :total_ghg_emissions_reductions_in_2020
      t.float :total_ghg_emissions_reductions_in_2030
      t.string :truth_uuid

      t.timestamps
    end
  end
end

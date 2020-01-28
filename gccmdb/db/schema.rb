# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_25_231815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "country"
    t.string "truth_uuid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "data_sources", force: :cascade do |t|
    t.string "source"
    t.string "truth_uuid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "measure_targets", force: :cascade do |t|
    t.string "target"
    t.string "truth_uuid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "measures", force: :cascade do |t|
    t.string "agency"
    t.string "city"
    t.string "country_id"
    t.string "country_region"
    t.string "data_source_id"
    t.string "description"
    t.string "ghgs_affected"
    t.string "impact_evaluation"
    t.string "impact_on_eu_ets_esd_or_lulucf_emissions"
    t.string "jurisdiction"
    t.string "link"
    t.string "name"
    t.float "percent_private_funded"
    t.integer "measure_financing_period_start"
    t.string "measure_financing_quantity"
    t.integer "measure_implementation_period_start_year"
    t.integer "measure_implementation_period_end_year"
    t.string "measure_status"
    t.string "measure_targets", default: [], array: true
    t.string "measure_type"
    t.integer "measure_written_year"
    t.string "related_documents_text"
    t.string "related_documents_url"
    t.string "related_to_eu_policy"
    t.boolean "related_to_eu_policy_boolean"
    t.string "related_to_neeap_policy"
    t.string "related_to_neeap_policy_boolean"
    t.float "total_ghg_emissions_reductions_in_2020"
    t.float "total_ghg_emissions_reductions_in_2030"
    t.string "truth_uuid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

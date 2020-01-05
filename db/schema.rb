# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_28_144239) do

  create_table "participant_test_cases", force: :cascade do |t|
    t.integer "participant_id"
    t.string "test_case_id"
    t.text "exercise_patterns"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "completed"
  end

  create_table "participants", force: :cascade do |t|
    t.string "contact"
    t.string "main_language"
    t.integer "years_programming"
    t.string "language_choice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "accepted"
    t.boolean "can_contact"
    t.string "name"
    t.string "agent"
    t.string "ip"
    t.integer "client_w"
    t.integer "client_h"
    t.text "test_case_order"
  end

  create_table "responses", force: :cascade do |t|
    t.string "test_case"
    t.integer "participant_id"
    t.integer "responded_ms"
    t.string "given_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "exercise_id"
    t.string "pattern"
    t.boolean "responded"
    t.integer "index"
    t.boolean "skipped"
    t.index ["participant_id"], name: "index_responses_on_participant_id"
  end

end

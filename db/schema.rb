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

ActiveRecord::Schema.define(version: 20181002134535) do

  create_table "genders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "neighborhood"
    t.string "gtype"
    t.text "criminal_complaint"
    t.integer "body_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intrafamilies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "neighborhood"
    t.string "victim"
    t.string "aggressor"
    t.text "criminal_complaint"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "murders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "neighborhood"
    t.integer "body_count"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "neighborhood"
    t.string "stype"
    t.integer "body_count"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "violence_acts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "act_type"
    t.bigint "street_id"
    t.bigint "gender_id"
    t.bigint "intrafamily_id"
    t.bigint "murder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_violence_acts_on_gender_id"
    t.index ["intrafamily_id"], name: "index_violence_acts_on_intrafamily_id"
    t.index ["murder_id"], name: "index_violence_acts_on_murder_id"
    t.index ["street_id"], name: "index_violence_acts_on_street_id"
  end

  add_foreign_key "violence_acts", "genders"
  add_foreign_key "violence_acts", "intrafamilies"
  add_foreign_key "violence_acts", "murders"
  add_foreign_key "violence_acts", "streets"
end
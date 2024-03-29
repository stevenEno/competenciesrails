# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_15_202614) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "ikigai"
    t.string "interest_1"
    t.string "interest_2"
    t.string "interest_3"
    t.string "interest_4"
    t.string "interest_5"
    t.date "birthday"
    t.string "school"
    t.string "school_goal_1"
    t.string "school_goal_2"
    t.string "school_goal_3"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "competencies", force: :cascade do |t|
    t.string "name"
    t.string "short_desc"
    t.string "long_desc"
    t.string "industry"
    t.string "primary_class"
    t.string "secondary_class"
    t.string "mastery1"
    t.string "mastery2"
    t.string "mastery3"
    t.string "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_competencies_on_user_id"
  end

  create_table "internships", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.string "industry"
    t.string "description"
    t.date "start_date"
    t.date "end_date"
    t.string "application_link"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_visible"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "ikigai"
    t.string "description"
    t.string "next_build"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "post_type"
    t.index ["user_id"], name: "index_portfolios_on_user_id"
  end

  create_table "professionals", force: :cascade do |t|
    t.string "name"
    t.string "organization"
    t.string "occupation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "field_trip"
    t.boolean "class_speaker"
    t.boolean "lunch"
    t.boolean "job_shadow"
    t.boolean "career_fair"
    t.boolean "mentorship"
    t.boolean "proj_pitch"
    t.boolean "proj_consult"
    t.boolean "proj_collab"
    t.boolean "student_wbl"
    t.boolean "externship"
    t.string "description"
    t.string "linked_in"
    t.bigint "user_id"
    t.integer "relationship_points"
    t.string "skill_1"
    t.string "skill_2"
    t.string "skill_3"
    t.string "skill_4"
    t.string "skill_5"
    t.integer "rating"
    t.boolean "is_currently_available"
    t.string "email"
    t.index ["user_id"], name: "index_professionals_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "hook"
    t.string "product"
    t.string "industry"
    t.string "constraints"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "s_curve"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "ikigai"
    t.string "interest_1"
    t.string "interest_2"
    t.string "interest_3"
    t.string "interest_4"
    t.string "interest_5"
    t.date "birthday"
    t.string "career_goal"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "ikigai"
    t.string "interest_1"
    t.string "interest_2"
    t.string "interest_3"
    t.string "interest_4"
    t.string "interest_5"
    t.date "birthday"
    t.boolean "is_CTE"
    t.string "alma_mater"
    t.string "eks_1"
    t.string "eks_2"
    t.string "eks_3"
    t.string "eks_4"
    t.string "eks_5"
    t.string "eks_6"
    t.string "eks_7"
    t.string "eks_8"
    t.string "eks_9"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_type", limit: 25, default: "0"
    t.string "name"
    t.string "school"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.bigint "votable_id"
    t.string "voter_type"
    t.bigint "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "admins", "users"
  add_foreign_key "portfolios", "users"
  add_foreign_key "professionals", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "students", "users"
  add_foreign_key "teachers", "users"
end

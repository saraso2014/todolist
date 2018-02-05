ActiveRecord::Schema.define(version: 20180202150001) do

  create_table  "projects", force: :cascade do |t|
    t.string    "name"
    t.datetime  "created_at", null: false
    t.datetime  "updated_at", null: false
  end

  create_table  "tasks", force: :cascade do |t|
    t.string    "name"
    t.boolean   "status"
    t.integer   "project_id"
    t.datetime  "due_date"
    t.datetime  "created_at", null: false
    t.datetime  "updated_at", null: false
    t.integer   "priority"
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  create_table  "users", force: :cascade do |t|
    t.string    "email", default: "", null: false
    t.string    "encrypted_password", default: "", null: false
    t.string    "name"
    t.string    "reset_password_token"
    t.datetime  "reset_password_sent_at"
    t.datetime  "remember_created_at"
    t.integer   "sign_in_count", default: 0, null: false
    t.datetime  "current_sign_in_at"
    t.datetime  "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.datetime  "created_at", null: false
    t.datetime  "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

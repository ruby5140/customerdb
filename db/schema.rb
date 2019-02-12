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

ActiveRecord::Schema.define(version: 20190212074016) do

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "company"
    t.string   "phone"
    t.string   "server"
    t.string   "remark"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "vdc"
    t.string   "contractdate"
    t.string   "monitoring"
    t.string   "cancellationdate"
    t.string   "product"
    t.string   "level"
    t.string   "sheet"
    t.string   "deliverytime"
    t.string   "day"
    t.string   "company2"
    t.string   "company3"
    t.string   "company4"
    t.string   "departmentname"
    t.string   "departmentname2"
    t.string   "departmentname3"
    t.string   "name"
    t.string   "name2"
    t.string   "name3"
    t.string   "email"
    t.string   "email2"
    t.string   "email3"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "link"
    t.string   "link2"
    t.string   "auth"
    t.string   "auth2"
    t.string   "ipadd"
    t.string   "ipadd2"
    t.string   "root"
    t.string   "root2"
    t.string   "vdc2"
    t.string   "vdc3"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin_flg"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end

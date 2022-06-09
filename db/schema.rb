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

ActiveRecord::Schema[7.0].define(version: 2022_06_08_231016) do
  create_table "cuenta_bancas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.string "numeroCuenta"
    t.string "saldo"
    t.string "tipo"
    t.string "comision"
    t.string "divisa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["numeroCuenta"], name: "index_cuenta_bancas_on_numeroCuenta", unique: true
  end

  create_table "developers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_developers_on_project_id"
    t.index ["surname"], name: "index_developers_on_surname"
  end

  create_table "perros", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "team"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team"], name: "index_perros_on_team", unique: true
  end

  create_table "projects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "team", null: false
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team"], name: "index_projects_on_team", unique: true
  end

  create_table "pruebas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_pruebas_on_project_id"
  end

  create_table "tarjeta", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "titular"
    t.string "numero"
    t.string "cvc"
    t.string "fechaCaducidad"
    t.integer "idCuenta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["idCuenta"], name: "index_tarjeta_on_idCuenta", unique: true
    t.index ["numero"], name: "index_tarjeta_on_numero", unique: true
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "apellidos"
    t.string "dni"
    t.integer "telefono"
    t.string "contrasena"
    t.index ["dni"], name: "index_users_on_dni", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "developers", "projects"
  add_foreign_key "pruebas", "projects"
end

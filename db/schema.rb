# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161024204144) do

  create_table "T_ACCESS_MEDIA", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "PARTY_ID",                                        null: false
    t.uuid     "STATUS_CV"
    t.datetime "EFFECTIVE_DATE"
    t.datetime "UNTIL_DATE"
    t.bigint   "NUMBER",                limit: 8,                 null: false
  end

  add_index "T_ACCESS_MEDIA", ["ROW_ID"], name: "IX_T_ACCESS_MEDIA"

  create_table "T_ACCESS_MEDIA_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.string   "NAME",                  limit: 50,                 null: false
    t.uuid     "TYPE_CV",                                          null: false
    t.boolean  "IS_ACTIVE",                        default: false, null: false
  end

  add_index "T_ACCESS_MEDIA_TYPE", ["ROW_ID"], name: "IX_T_ACCESS_MEDIA_TYPE"

  create_table "T_ACCESS_PROFILE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 100,                 null: false
    t.string   "CODE",                  limit: 100
  end

  add_index "T_ACCESS_PROFILE", ["ROW_ID"], name: "IX_T_ACCESS_PROFILE"

  create_table "T_ACCESS_PROFILE_HARDWARE_DEVICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "ACCESS_PROFILE_ID",                     null: false
    t.uuid     "HARDWARE_DEVICE_ID",                    null: false
  end

  add_index "T_ACCESS_PROFILE_HARDWARE_DEVICE", ["ROW_ID"], name: "IX_T_ACCESS_PROFILE_HARDWARE_DEVICE"

  create_table "T_ACCESS_PROFILE_TIME", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "ACCESS_PROFILE_ID",                     null: false
    t.uuid     "DAY_OF_WEEK_TYPE_CV"
    t.datetime "START_TIME"
    t.datetime "END_TIME"
  end

  add_index "T_ACCESS_PROFILE_TIME", ["ROW_ID"], name: "IX_T_ACCESS_PROFILE_TIME"

  create_table "T_ACCESS_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                   null: false
    t.uuid     "CREATION_USER_ID",                                                     null: false
    t.datetime "CREATION_TIMESTAMP",                                                   null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                  null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                null: false
    t.boolean  "IS_DELETED",                                           default: false, null: false
    t.integer  "FORGET_ACCESS_MEDIA_LIMIT",                  limit: 4, default: 0,     null: false
    t.boolean  "ALLOW_ACCESS_IF_FORGET_MEDIA",                         default: false, null: false
    t.boolean  "ALLOW_ACCESS_IF_ACCESS_PROFILE_NOT_SET",               default: false, null: false
    t.boolean  "IS_PASSBACK_CHECKING_ENABLED",                         default: false, null: false
    t.boolean  "IS_FACILITY_ACCESS_ALLOWED_ON_PASSBACK",               default: false, null: false
    t.integer  "PASSBACK_WARNING_PERIOD_MINUTES",            limit: 4, default: 0,     null: false
    t.boolean  "IS_SAVE_EXIT_ONLY_EVENTS_ENABLED",                     default: false, null: false
    t.boolean  "IS_REMOVE_VISIT_ON_EXIT_ONLY_EVENT_ENABLED",           default: false, null: false
    t.boolean  "IS_PASSBACK_CHECKING_FOR_MVP_ENABLED",                 default: false, null: false
    t.boolean  "IS_ORGANIZATION_GROUP_ACCESS_ENABLED",                 default: false, null: false
    t.boolean  "IS_MEMBER_GROUP_ACCESS_ENABLED",                       default: false, null: false
    t.boolean  "IS_ANONYMOUS_GROUP_ACCESS_ENABLED",                    default: false, null: false
  end

  add_index "T_ACCESS_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_ACCESS_SETTINGS"

  create_table "T_ACCOUNTING_PERIOD", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.uuid     "ORGANIZATION_ID",                                  null: false
    t.datetime "FROM_DATE",                                        null: false
    t.datetime "THRU_DATE",                                        null: false
    t.uuid     "PARENT_PERIOD_ID"
    t.boolean  "IS_OPEN",                                          null: false
    t.nchar    "NAME",                  limit: 50
  end

  add_index "T_ACCOUNTING_PERIOD", ["ROW_ID"], name: "IX_T_ACCOUNTING_PERIOD"

  create_table "T_ACCOUNTING_TRANSACTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                    null: false
    t.uuid     "CREATION_USER_ID",                                      null: false
    t.datetime "CREATION_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                            default: false, null: false
    t.datetime "TRANSACTION_DATE",                                      null: false
    t.datetime "ENTRY_DATE"
    t.uuid     "TYPE_CV"
    t.text     "DESCRIPTION",        limit: 2147483647
    t.uuid     "COMPUTER_ID"
    t.boolean  "IS_VOID",                               default: false, null: false
    t.datetime "VOID_TIMESTAMP"
    t.uuid     "VOIDED_BY_USER_ID"
  end

  add_index "T_ACCOUNTING_TRANSACTION", ["IS_DELETED", "COMPUTER_ID"], name: "T_ACCOUNTING_TRANSACTION_IS_DELETED_COMPUTER_ID"
  add_index "T_ACCOUNTING_TRANSACTION", ["IS_DELETED", "IS_VOID", "TRANSACTION_DATE"], name: "T_ACCOUNTING_TRANSACTION_IS_DELETED_IS_VOID_TRANSACTION_DATE"
  add_index "T_ACCOUNTING_TRANSACTION", ["ROW_ID"], name: "IX_T_ACCOUNTING_TRANSACTION"

  create_table "T_ACCOUNTING_TRANSACTION_DETAIL_SUMMARY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                             null: false
    t.uuid     "CREATION_USER_ID",                                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                          null: false
    t.boolean  "IS_DELETED",                                                     default: false, null: false
    t.uuid     "ACCOUNTING_TRANSACTION_ID"
    t.uuid     "TRANSACTION_DETAIL_ID"
    t.string   "PRODUCT_NAME",              limit: 500
    t.uuid     "PRODUCT_ID"
    t.integer  "QUANTITY",                  limit: 4
    t.string   "TAX_ITEM_NAME",             limit: 150
    t.uuid     "TAX_ITEM_ID"
    t.string   "ORDER_NUMBER",              limit: 100
    t.uuid     "ORDER_ID"
    t.uuid     "INVOICE_ID"
    t.string   "INVOICE_NUMBER",            limit: 100
    t.uuid     "INVOICE_ITEM_ID"
    t.uuid     "BILLING_BATCH_ID"
    t.decimal  "AMOUNT",                                precision: 19, scale: 4
    t.decimal  "PERCENTAGE",                            precision: 19, scale: 4
    t.string   "CUSTOMER_FIRST_NAME",       limit: 50
    t.string   "CUSTOMER_LAST_NAME",        limit: 50
    t.uuid     "CUSTOMER_PARTY_ID"
    t.string   "GL_ACCOUNT_NAME",           limit: 50
    t.uuid     "GL_ACCOUNT_ID"
    t.string   "GL_ACCOUNT_NUMBER",         limit: 100
    t.uuid     "TYPE_CV"
    t.boolean  "IS_VOID",                                                        default: false, null: false
    t.datetime "VOID_TIMESTAMP"
    t.uuid     "VOIDED_BY_USER_ID"
    t.datetime "TRANSACTION_DATE"
  end

  add_index "T_ACCOUNTING_TRANSACTION_DETAIL_SUMMARY", ["ROW_ID"], name: "IX_T_ACCOUNTING_TRANSACTION_DETAIL_SUMMARY"

  create_table "T_ACCOUNTS_RECEIVABLE_SUBSIDIARY_ACCOUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                       null: false
    t.uuid     "CREATION_USER_ID",                                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                    null: false
    t.boolean  "IS_DELETED",                                               default: false, null: false
    t.uuid     "PARTY_ID"
    t.decimal  "BALANCE_AMOUNT",                  precision: 19, scale: 4,                 null: false
    t.char     "DEBIT_CREDIT_FLAG",     limit: 1,                                          null: false
  end

  add_index "T_ACCOUNTS_RECEIVABLE_SUBSIDIARY_ACCOUNT", ["ROW_ID"], name: "IX_T_ACCOUNTS_RECEIVABLE_SUBSIDIARY_ACCOUNT"

  create_table "T_ADDRESS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                         null: false
    t.uuid     "CREATION_USER_ID",                                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                      null: false
    t.boolean  "IS_DELETED",                                                 default: false, null: false
    t.uuid     "ADDRESS_TYPE_CV"
    t.varchar  "ADDRESS_LINE_1",        limit: 100
    t.varchar  "ADDRESS_LINE_2",        limit: 100
    t.uuid     "PROVINCE_ID"
    t.uuid     "COUNTRY_ID"
    t.string   "LOCATION_DESC",         limit: 300
    t.varchar  "POSTAL_CODE",           limit: 10
    t.varchar  "CITY",                  limit: 50
    t.varchar  "ADDRESS_UNIT_NUMBER",   limit: 10
    t.integer  "MONTHS_AT",             limit: 4
    t.uuid     "OWNERSHIP_STATUS_CV"
    t.decimal  "LATITUDE",                          precision: 18, scale: 7
    t.decimal  "LONGITUDE",                         precision: 18, scale: 7
  end

  add_index "T_ADDRESS", ["ROW_ID"], name: "IX_T_ADDRESS"

  create_table "T_AGE_BRACKET", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.varchar  "NAME",                  limit: 50,                 null: false
    t.integer  "MINIMUM_AGE",           limit: 4,  default: 0,     null: false
    t.integer  "MAXIMUM_AGE",           limit: 4,  default: 0,     null: false
  end

  add_index "T_AGE_BRACKET", ["ROW_ID"], name: "IX_T_AGE_BRACKET"

  create_table "T_AGREEMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                           null: false
    t.uuid     "CREATION_USER_ID",                                             null: false
    t.datetime "CREATION_TIMESTAMP",                                           null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                          null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                        null: false
    t.boolean  "IS_DELETED",                                   default: false, null: false
    t.uuid     "RELATIONSHIP_ID"
    t.uuid     "AGREEMENT_TYPE_CV",                                            null: false
    t.datetime "AGREEMENT_DATE",                                               null: false
    t.datetime "EFFECTIVE_DATE"
    t.datetime "UNTIL_DATE"
    t.varchar  "DESCRIPTION",               limit: 255
    t.varchar  "TEXT",                      limit: 255
    t.string   "NUMBER",                    limit: 100
    t.uuid     "INPUT_METHOD_CV"
    t.uuid     "SERVICE_PERIOD_ID"
    t.uuid     "SERVICE_PRICE_ID"
    t.uuid     "CLEANUP_METHOD_CV"
    t.text     "COMMENTS",                  limit: 2147483647
    t.boolean  "IS_PERMANENT",                                 default: false, null: false
    t.uuid     "BILLING_FREQUENCY_TYPE_CV"
    t.uuid     "CUSTOM_DATE_RANGE_ID"
  end

  add_index "T_AGREEMENT", ["IS_DELETED", "EFFECTIVE_DATE"], name: "T_AGREEMENT_IS_DELETED_EFFECTIVE_DATE"
  add_index "T_AGREEMENT", ["IS_DELETED"], name: "T_AGREEMENT_IS_DELETED"
  add_index "T_AGREEMENT", ["IS_DELETED"], name: "T_AGREEMENT_IS_DELETED_ID"
  add_index "T_AGREEMENT", ["IS_DELETED"], name: "T_AGREEMENT_IS_DELETED_ID_EFFECTIVE_DATE_UNTIL_DATE_SERVICE_PERIOD_ID"
  add_index "T_AGREEMENT", ["ROW_ID"], name: "IX_T_AGREEMENT"

  create_table "T_AGREEMENT_ADJUSTMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                         null: false
    t.uuid     "CREATION_USER_ID",                                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                      null: false
    t.boolean  "IS_DELETED",                                                 default: false, null: false
    t.uuid     "ADJUST_TYPE_CV",                                                             null: false
    t.uuid     "AGREEMENT_ID"
    t.uuid     "AGREEMENT_ITEM_ID"
    t.decimal  "AMOUNT",                            precision: 18, scale: 4
    t.decimal  "PERCENTAGE",                        precision: 9,  scale: 4
    t.varchar  "DESCRIPTION",           limit: 100
    t.boolean  "IS_WAIVED",                                                  default: false, null: false
    t.varchar  "COMMENTS",              limit: 150
    t.uuid     "TAX_ITEM_ID"
  end

  add_index "T_AGREEMENT_ADJUSTMENT", ["ROW_ID"], name: "IX_T_AGREEMENT_ADJUSTMENT"

  create_table "T_AGREEMENT_BILLING", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                         null: false
    t.uuid     "CREATION_USER_ID",                                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                      null: false
    t.boolean  "IS_DELETED",                                                 default: false, null: false
    t.datetime "FIRST_BILLING_MONTH",                                                        null: false
    t.datetime "LAST_BILLING_MONTH"
    t.decimal  "UPFRONT_CHARGE",                    precision: 18, scale: 2,                 null: false
    t.decimal  "MONTHLY_CHARGE",                    precision: 18, scale: 4,                 null: false
    t.decimal  "LAST_MONTH_CHARGE",                 precision: 18, scale: 2
    t.decimal  "CHARGES_TO_DATE",                   precision: 18, scale: 2
    t.uuid     "PAYMENT_TYPE_CV"
    t.uuid     "BANK_ACCOUNT_ID"
    t.datetime "CARD_EXPIRY_MONTH"
    t.string   "SHIFT4_UNIQUE_ID",      limit: 150
  end

  add_index "T_AGREEMENT_BILLING", ["ROW_ID"], name: "IX_ROW_ID_T_AGREEMENT_BILLING"

  create_table "T_AGREEMENT_CHANGE_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "DESCRIPTION",           limit: 300
    t.uuid     "AGREEMENT_ID",                                      null: false
    t.uuid     "AGREEMENT_ITEM_ID"
  end

  add_index "T_AGREEMENT_CHANGE_LOG", ["ROW_ID"], name: "IX_T_AGREEMENT_CHANGE_LOG"

  create_table "T_AGREEMENT_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CHANGED_BY_USER_ID",                               null: false
    t.datetime "VALID_UNTIL",                                      null: false
    t.boolean  "PRODUCT_ID_CHANGED",               default: false, null: false
    t.uuid     "PRODUCT_ID"
    t.boolean  "AGREEMENT_EFFECTIVE_DATE_CHANGED", default: false, null: false
    t.datetime "AGREEMENT_EFFECTIVE_DATE"
    t.boolean  "AGREEMENT_UNTIL_DATE_CHANGED",     default: false, null: false
    t.datetime "AGREEMENT_UNTIL_DATE"
    t.boolean  "AGREEMENT_IS_PERMANENT_CHANGED",   default: false, null: false
    t.boolean  "AGREEMENT_IS_PERMANENT",           default: false, null: false
  end

  add_index "T_AGREEMENT_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_AGREEMENT_HISTORY"

  create_table "T_AGREEMENT_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                               null: false
    t.uuid     "CREATION_USER_ID",                                                                 null: false
    t.datetime "CREATION_TIMESTAMP",                                                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                            null: false
    t.boolean  "IS_DELETED",                                                       default: false, null: false
    t.uuid     "AGREEMENT_ID",                                                                     null: false
    t.varchar  "AGREEMENT_TEXT",             limit: 255
    t.string   "AGREEMENT_IMAGE",            limit: 4000
    t.uuid     "AGREEMENT_ITEM_TYPE_CV"
    t.uuid     "PARENT_AGREEMENT_ITEM_ID"
    t.uuid     "DEFAULT_PRICE_COMPONENT_ID"
    t.uuid     "APPOINTMENT_ID"
    t.uuid     "PRODUCT_ID"
    t.decimal  "UNIT_PRICE",                              precision: 18, scale: 4
    t.uuid     "BILLING_CYCLE_ID"
    t.datetime "EFFECTIVE_DATE"
    t.datetime "UNTIL_DATE"
    t.decimal  "QUANTITY",                                precision: 18, scale: 0, default: 1.0
  end

  add_index "T_AGREEMENT_ITEM", ["IS_DELETED", "AGREEMENT_ID"], name: "IX_T_AGREEMENT_ITEM_IS_DELETED_AGREEMENT_ID"
  add_index "T_AGREEMENT_ITEM", ["ROW_ID"], name: "IX_T_AGREEMENT_ITEM"

  create_table "T_AGREEMENT_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                     null: false
    t.uuid     "CREATION_USER_ID",                       null: false
    t.datetime "CREATION_TIMESTAMP",                     null: false
    t.uuid     "LAST_UPDATE_USER_ID",                    null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                  null: false
    t.boolean  "IS_DELETED",             default: false, null: false
    t.uuid     "PARTY_ID",                               null: false
    t.uuid     "AGREEMENT_ID",                           null: false
    t.uuid     "AGREEMENT_ROLE_TYPE_CV",                 null: false
    t.datetime "EFFECTIVE_DATE",                         null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_AGREEMENT_ROLE", ["AGREEMENT_ID", "AGREEMENT_ROLE_TYPE_CV"], name: "IX_T_AGREEMENT_ROLE_AGREEMENT_ID_AGREEMENT_ROLE_TYPE_CV"
  add_index "T_AGREEMENT_ROLE", ["AGREEMENT_ROLE_TYPE_CV"], name: "IX_T_AGREEMENT_ROLE_AGREEMENT_ROLE_TYPE_CV"
  add_index "T_AGREEMENT_ROLE", ["AGREEMENT_ROLE_TYPE_CV"], name: "T_AGREEMENT_ROLE_AGREEMENT_ROLE_TYPE_CV"
  add_index "T_AGREEMENT_ROLE", ["IS_DELETED", "AGREEMENT_ID", "AGREEMENT_ROLE_TYPE_CV"], name: "IX_T_AGREEMENT_ROLE_IS_DELETED_AGREEMENT_ID_AGREEMENT_ROLE_TYPE_CV"
  add_index "T_AGREEMENT_ROLE", ["IS_DELETED", "AGREEMENT_ROLE_TYPE_CV"], name: "IX_T_AGREEMENT_ROLE_IS_DELETED_AGREEMENT_ROLE_TYPE_CV"
  add_index "T_AGREEMENT_ROLE", ["IS_DELETED", "PARTY_ID", "AGREEMENT_ROLE_TYPE_CV"], name: "IX_T_AGREEMENT_ROLE_IS_DELETED_PARTY_ID_AGREEMENT_ROLE_TYPE_CV"
  add_index "T_AGREEMENT_ROLE", ["IS_DELETED", "PARTY_ID", "AGREEMENT_ROLE_TYPE_CV"], name: "T_AGREEMENT_ROLE_IS_DELETED_PARTY_ID_AGREEMENT_ROLE_CV_AGREEMENT_ID"
  add_index "T_AGREEMENT_ROLE", ["PARTY_ID", "AGREEMENT_ROLE_TYPE_CV"], name: "IX_T_AGREEMENT_ROLE_PARTY_ID_AGREEMENT_ROLE_TYPE_CV"
  add_index "T_AGREEMENT_ROLE", ["ROW_ID"], name: "IX_T_AGREEMENT_ROLE_1"

  create_table "T_AGREEMENT_STATUS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                    null: false
    t.uuid     "CREATION_USER_ID",      null: false
    t.datetime "CREATION_TIMESTAMP",    null: false
    t.uuid     "LAST_UPDATE_USER_ID",   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP", null: false
    t.uuid     "AGREEMENT_ID",          null: false
    t.uuid     "AGREEMENT_STATUS_CV",   null: false
    t.datetime "EFFECTIVE_DATE",        null: false
    t.datetime "UNTIL_DATE"
    t.datetime "VALID_UNTIL_DATE"
  end

  add_index "T_AGREEMENT_STATUS", ["AGREEMENT_ID", "UNTIL_DATE"], name: "IX_T_AGREEMENT_STATUS_AGREEMENT_ID_UNTIL_DATE"
  add_index "T_AGREEMENT_STATUS", ["AGREEMENT_STATUS_CV", "UNTIL_DATE"], name: "T_AGREEMENT_STATUS_AGREEMENT_STATUS_CV_UNTIL_DATE"
  add_index "T_AGREEMENT_STATUS", ["AGREEMENT_STATUS_CV", "UNTIL_DATE"], name: "T_AGREEMENT_STATUS_AGREEMENT_STATUS_CV_UNTIL_DATE_AGREEMENT_ID"
  add_index "T_AGREEMENT_STATUS", ["ROW_ID"], name: "IX_T_AGREEMENT_STATUS"
  add_index "T_AGREEMENT_STATUS", ["UNTIL_DATE", "AGREEMENT_STATUS_CV"], name: "IX_T_AGREEMENT_STATUS_UNTIL_DATE_AGREEMENT_STATUS_CV"

  create_table "T_APPOINTMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                     null: false
    t.uuid     "CREATION_USER_ID",                                                       null: false
    t.datetime "CREATION_TIMESTAMP",                                                     null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                    null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                  null: false
    t.boolean  "IS_DELETED",                                             default: false, null: false
    t.integer  "TYPE",                                limit: 4
    t.datetime "START_DATE"
    t.datetime "END_DATE"
    t.boolean  "IS_ALL_DAY"
    t.string   "SUBJECT",                             limit: 500
    t.string   "LOCATION",                            limit: 1000
    t.text     "DESCRIPTION",                         limit: 2147483647
    t.bigint   "LABEL",                               limit: 8
    t.text     "RECURRENCE_INFO",                     limit: 2147483647
    t.text     "REMINDER_INFO",                       limit: 2147483647
    t.uuid     "COURSE_OFFERING_ID"
    t.uuid     "FACILITY_ID"
    t.uuid     "PRODUCT_ID"
    t.uuid     "APPOINTMENT_TYPE_CV"
    t.text     "RECURRENCE_TEXT",                     limit: 2147483647
    t.integer  "EXPECTED_ATTENDANCE",                 limit: 4
    t.integer  "ACTUAL_ATTENDANCE",                   limit: 4
    t.uuid     "FACILITY_RENTAL_AGREEMENT_ID"
    t.string   "RESOURCE_ID",                         limit: 4000
    t.uuid     "PARTY_ID"
    t.datetime "RECURRENCE_END_DATE"
    t.string   "FACILITY_RESERVATION_REQUEST_NUMBER", limit: 100
    t.uuid     "SOURCE_TYPE_CV"
    t.uuid     "PARENT_APPOINTMENT_ID"
    t.uuid     "FACILITY_RESERVATION_REQUEST_ID"
    t.uuid     "ACTIVITY_TYPE_CV"
    t.boolean  "IS_PUBLIC",                                              default: false
    t.integer  "STATUS",                              limit: 4
    t.datetime "STATUS_UNTIL_DATE"
    t.uuid     "RELATED_ENTITY_ID"
  end

  add_index "T_APPOINTMENT", ["IS_DELETED", "APPOINTMENT_TYPE_CV"], name: "T_APPOINTMENT_IS_DELETED_APPOINTMENT_TYPE_CV"
  add_index "T_APPOINTMENT", ["IS_DELETED", "COURSE_OFFERING_ID", "FACILITY_RENTAL_AGREEMENT_ID", "PARTY_ID", "PRODUCT_ID"], name: "T_APPOINTMENT_IS_DELETED_COURSE_OFFERING_ID"
  add_index "T_APPOINTMENT", ["IS_DELETED", "FACILITY_RENTAL_AGREEMENT_ID"], name: "IX_T_APPOINTMENT_IS_DELETED_FACILITY_RENTAL_AGREEMENT_ID"
  add_index "T_APPOINTMENT", ["ROW_ID"], name: "IX_T_APPOINTMENT"

  create_table "T_APPOINTMENT_CHECK_IN", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "APPOINTMENT_ROLE_ID",                   null: false
    t.datetime "CHECK_IN_TIMESTAMP",                    null: false
  end

  add_index "T_APPOINTMENT_CHECK_IN", ["ROW_ID"], name: "IX_ROW_ID_T_APPOINTMENT_CHECKIN"

  create_table "T_APPOINTMENT_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "APPOINTMENT_ID",                        null: false
    t.uuid     "FACILITY_ID",                           null: false
  end

  add_index "T_APPOINTMENT_FACILITY", ["APPOINTMENT_ID"], name: "IX_T_APPOINTMENT_FACILITY_APPOINTMENT_ID"
  add_index "T_APPOINTMENT_FACILITY", ["ROW_ID"], name: "IX_T_APPOINTMENT_FACILITY"

  create_table "T_APPOINTMENT_OCCURRENCE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "APPOINTMENT_ID",                      null: false
    t.datetime "START_DATE",                          null: false
    t.datetime "END_DATE"
    t.uuid     "FACILITY_ID"
    t.boolean  "IS_ALL_DAY",          default: false, null: false
    t.boolean  "HAS_ACTUAL_END_DATE", default: true,  null: false
    t.uuid     "RECURRENCE_ID"
  end

  add_index "T_APPOINTMENT_OCCURRENCE", ["ROW_ID"], name: "IX_ROW_ID_T_APPOINTMENT_OCCURRENCE"

  create_table "T_APPOINTMENT_OCCURRENCE_POPULATE_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                         null: false
    t.uuid     "CREATION_USER_ID",                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                      null: false
    t.boolean  "IS_DELETED",                                 default: false, null: false
    t.datetime "START_TIMESTAMP"
    t.datetime "FINISH_TIMESTAMP"
    t.integer  "NUMBER_OF_OCCURRENCES_CREATED",    limit: 4
    t.integer  "NUMBER_OF_APPOINTMENTS_PROCESSED", limit: 4
  end

  add_index "T_APPOINTMENT_OCCURRENCE_POPULATE_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_APPOINTMENT_OCCURRENCE_POPULATE_LOG"

  create_table "T_APPOINTMENT_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                   null: false
    t.uuid     "CREATION_USER_ID",                                     null: false
    t.datetime "CREATION_TIMESTAMP",                                   null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                  null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                null: false
    t.boolean  "IS_DELETED",                           default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                       null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "APPOINTMENT_ID",                                       null: false
    t.uuid     "APPOINTMENT_ROLE_TYPE_CV",                             null: false
    t.uuid     "PARTY_ID"
    t.string   "PARTY_ID_NUMBER",          limit: 50
    t.string   "PARTY_FIRST_NAME",         limit: 50
    t.string   "PARTY_LAST_NAME",          limit: 50
    t.string   "PARTY_EMAIL_ADDRESS",      limit: 100
  end

  add_index "T_APPOINTMENT_ROLE", ["ROW_ID"], name: "IX_ROW_ID_T_APPOINTMENT_ROLE"

  create_table "T_APPOINTMENT_STATUS_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                           null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "APPOINTMENT_ID",                                           null: false
    t.integer  "STATUS",                limit: 4
    t.text     "INTERNAL_COMMENTS",     limit: 2147483647
    t.text     "EXTERNAL_COMMENTS",     limit: 2147483647
  end

  add_index "T_APPOINTMENT_STATUS_HISTORY", ["IS_DELETED", "UNTIL_DATE", "STATUS"], name: "T_APPOINTMENT_STATUS_IS_DELETED_UNTIL_DATE_STATUS"
  add_index "T_APPOINTMENT_STATUS_HISTORY", ["ROW_ID"], name: "IX_T_APPOINTMENT_STATUS"

  create_table "T_AR_TRANSACTION_DETAIL", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                      null: false
    t.uuid     "CREATION_USER_ID",                                                                        null: false
    t.datetime "CREATION_TIMESTAMP",                                                                      null: false
    t.boolean  "IS_DELETED",                                                              default: false, null: false
    t.uuid     "AR_ACCOUNT_ID",                                                                           null: false
    t.string   "DESCRIPTION",                        limit: 300
    t.decimal  "AMOUNT",                                         precision: 18, scale: 2,                 null: false
    t.char     "DEBIT_CREDIT_FLAG",                  limit: 1,                                            null: false
    t.uuid     "TRANSACTION_ID"
    t.uuid     "TRANSACTION_DETAIL_ID"
    t.uuid     "ORGANIZATION_GL_ACCOUNT_BALANCE_ID"
    t.uuid     "COMPUTER_ID"
    t.boolean  "IS_VOID",                                                                 default: false, null: false
    t.datetime "VOID_TIMESTAMP"
    t.uuid     "VOIDED_BY_USER_ID"
    t.uuid     "TYPE_CV"
  end

  add_index "T_AR_TRANSACTION_DETAIL", ["ROW_ID"], name: "IX_T_AR_TRANSACTION_DETAIL"

  create_table "T_ASSET", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                         null: false
    t.uuid     "CREATION_USER_ID",                                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                      null: false
    t.boolean  "IS_DELETED",                                                 default: false, null: false
    t.uuid     "PARTY_ID",                                                                   null: false
    t.string   "DESCRIPTION",           limit: 100
    t.decimal  "VALUE",                             precision: 18, scale: 2
    t.datetime "DATE_ACQUIRED"
  end

  add_index "T_ASSET", ["ROW_ID"], name: "IX_T_ASSET"

  create_table "T_BANK_ACCOUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                        null: false
    t.uuid     "CREATION_USER_ID",                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                     null: false
    t.boolean  "IS_DELETED",                                default: false, null: false
    t.string   "ROUTING_TRANSIT_NUMBER", limit: 10,                         null: false
    t.string   "INSTITUTION_NUMBER",     limit: 10
    t.text     "ACCOUNT_NUMBER",         limit: 2147483647,                 null: false
    t.boolean  "IS_VOID_CHECK_RECEIVED",                    default: false, null: false
    t.uuid     "PARTY_ID",                                                  null: false
    t.uuid     "BANK_ACCOUNT_TYPE_ID"
  end

  add_index "T_BANK_ACCOUNT", ["ROW_ID"], name: "IX_ROW_ID_T_BANK_ACCOUNT"

  create_table "T_BANK_ACCOUNT_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.string   "NAME",                  limit: 50,                 null: false
    t.string   "CODE",                  limit: 50,                 null: false
  end

  add_index "T_BANK_ACCOUNT_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_BANK_ACCOUNT_TYPE"

  create_table "T_BAR_CODE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                     null: false
    t.integer "START_POSITION",               limit: 4
    t.integer "NUMBER_OF_CHARACTERS",         limit: 4
    t.integer "LENGTH",                       limit: 4
    t.integer "VERSION_START_POSITION",       limit: 4
    t.integer "VERSION_NUMBER_OF_CHARACTERS", limit: 4
  end

  add_index "T_BAR_CODE", ["ROW_ID"], name: "IX_T_BAR_CODE"

  create_table "T_BASE_PRICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_BASE_PRICE", ["ROW_ID"], name: "IX_T_BASE_PRICE"

  create_table "T_BILLING_ACCOUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PARTY_ID",                              null: false
  end

  add_index "T_BILLING_ACCOUNT", ["ROW_ID"], name: "IX_T_BILLING_ACCOUNT"

  create_table "T_BILLING_BATCH", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                           null: false
    t.uuid     "CREATION_USER_ID",                                                             null: false
    t.datetime "CREATION_TIMESTAMP",                                                           null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                          null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                        null: false
    t.boolean  "IS_DELETED",                                                   default: false, null: false
    t.datetime "BILLING_DATE",                                                                 null: false
    t.uuid     "ACCOUNTING_PERIOD_ID"
    t.uuid     "ACCOUNTING_TRANSACTION_ID"
    t.decimal  "BATCH_TOTAL",                         precision: 18, scale: 2
    t.decimal  "TOTAL_DECLINED",                      precision: 18, scale: 2
    t.uuid     "COMPUTER_ID"
    t.datetime "BATCH_STARTED"
    t.datetime "BATCH_COMPLETED"
    t.integer  "ERROR_CODE",                limit: 4
    t.uuid     "PAYMENT_TYPE_CV"
  end

  add_index "T_BILLING_BATCH", ["ROW_ID"], name: "IX_ROW_ID_T_BILLING_BATCH"

  create_table "T_BILLING_BATCH_DETAIL", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                          null: false
    t.uuid     "BILLING_BATCH_ID",                                            null: false
    t.uuid     "AGREEMENT_ID",                                                null: false
    t.uuid     "INVOICE_ID",                                                  null: false
    t.decimal  "CHARGE_AMOUNT",      precision: 18, scale: 2,                 null: false
    t.boolean  "IS_DECLINED",                                 default: false, null: false
    t.datetime "DECLINED_TIMESTAMP"
    t.uuid     "DECLINED_USER_ID"
  end

  add_index "T_BILLING_BATCH_DETAIL", ["ROW_ID"], name: "IX_ROW_ID_T_BILLING_BATCH_DETAIL"

  create_table "T_BILLING_BATCH_STAGING_INVOICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "BILLING_BATCH_ID",                                                    null: false
    t.uuid    "BILLING_BATCH_DETAIL_ID",                                             null: false
    t.uuid    "INVOICE_ID"
    t.integer "NUMBER_INCREMENT",        limit: 4
    t.string  "INVOICE_NUMBER",          limit: 100
    t.uuid    "ORDER_ID"
    t.decimal "INVOICE_AMOUNT",                             precision: 18, scale: 2
    t.uuid    "PAYMENT_ID"
    t.string  "PAYMENT_NUMBER",          limit: 100
    t.uuid    "PAYOR_PARTY_ID"
    t.string  "ROUTING_TRANSIT_NUMBER",  limit: 50
    t.string  "INSTITUTION_NUMBER",      limit: 50
    t.text    "ACCOUNT_NUMBER",          limit: 2147483647
  end

  add_index "T_BILLING_BATCH_STAGING_INVOICE", ["ROW_ID"], name: "IX_ROW_ID_T_BILLING_BATCH_STAGING_INVOICE"

  create_table "T_BILLING_BATCH_STAGING_INVOICE_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "BILLING_BATCH_ID",                                                     null: false
    t.uuid    "INVOICE_ID",                                                           null: false
    t.decimal "UNIT_PRICE",                                  precision: 18, scale: 2, null: false
    t.decimal "PERCENTAGE",                                  precision: 9,  scale: 4, null: false
    t.varchar "ITEM_DESCRIPTION",               limit: 1000,                          null: false
    t.uuid    "PRODUCT_ID"
    t.uuid    "TAX_ITEM_ID"
    t.integer "SEQUENCE_NUMBER",                limit: 4,                             null: false
    t.integer "ADJUSTMENT_FOR_SEQUENCE_NUMBER", limit: 4
    t.uuid    "TYPE_CV",                                                              null: false
    t.uuid    "ORDER_ITEM_ID",                                                        null: false
  end

  add_index "T_BILLING_BATCH_STAGING_INVOICE_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_BILLING_BATCH_STAGING_INVOICE_ITEM"

  create_table "T_BILLING_BATCH_STAGING_TRANSACTION_DETAIL", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "BILLING_BATCH_ID",                                                                        null: false
    t.uuid    "TRANSACTION_DETAIL_ID",                                                                   null: false
    t.uuid    "ORGANIZATION_GL_ACCOUNT_ID",                                                              null: false
    t.uuid    "ORGANIZATION_GL_ACCOUNT_BALANCE_ID"
    t.boolean "IS_NEW_BALANCE_ID",                                                       default: false, null: false
    t.decimal "AMOUNT",                                         precision: 18, scale: 2,                 null: false
    t.char    "DEBIT_CREDIT_FLAG",                  limit: 1,                                            null: false
    t.string  "GL_ACCOUNT_NAME",                    limit: 100
    t.uuid    "GL_ACCOUNT_ID"
    t.string  "GL_ACCOUNT_NUMBER",                  limit: 100
    t.boolean "IS_PAYMENT",                                                              default: false
  end

  add_index "T_BILLING_BATCH_STAGING_TRANSACTION_DETAIL", ["ROW_ID"], name: "IX_ROW_ID_T_BILLING_BATCH_STAGING_TRANSACTION_DETAIL"

  create_table "T_BLACKBOARD_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                null: false
    t.uuid     "CREATION_USER_ID",                                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                             null: false
    t.boolean  "IS_DELETED",                                        default: false, null: false
    t.string   "BBTS_IP_ADDRESS",                        limit: 39
    t.string   "BBTS_PORT_NUMBER",                       limit: 5
    t.boolean  "IS_POS_INTEGRATION_ENABLED",                        default: false, null: false
    t.boolean  "IS_FACILITY_ACCESS_INTEGRATION_ENABLED",            default: false, null: false
    t.string   "DEFAULT_TERMINAL_NUMBER",                limit: 8
    t.string   "DEFAULT_TENDER_NUMBER",                  limit: 4
    t.string   "DEFAULT_ENCRYPTION_KEY",                 limit: 50
    t.uuid     "EXTERNAL_ID_TYPE_CV"
    t.integer  "RECEIVE_TIMEOUT_MILLISECONDS",           limit: 4
    t.boolean  "IS_PRODUCTION_ENVIRONMENT",                         default: false, null: false
    t.boolean  "IS_IGNORE_ACCESS_TRANSACTIONS_ENABLED",             default: false, null: false
  end

  add_index "T_BLACKBOARD_SETTINGS", ["ROW_ID"], name: "IX_T_BLACKBOARD_SETTINGS"

  create_table "T_BLACKBOARD_TRANSACTION_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                            null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                                            null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                         null: false
    t.boolean  "IS_DELETED",                                                    default: false, null: false
    t.string   "TRANSACTION_TYPE_NAME",    limit: 50
    t.string   "TENDER_NUMBER",            limit: 50
    t.string   "TERMINAL_NUMBER",          limit: 50
    t.string   "SEQUENCE_NUMBER",          limit: 50
    t.boolean  "IS_VALID_TRANSACTION",                                          default: false, null: false
    t.string   "RESPONSE_CODE",            limit: 50
    t.string   "RESPONSE_MESSAGE",         limit: 200
    t.boolean  "IS_MANUAL_ID_ENTRY",                                            default: false, null: false
    t.string   "ID_DATA_SENT",             limit: 150
    t.decimal  "RESPONSE_SECONDS",                     precision: 9,  scale: 3
    t.integer  "RETRY_COUNT",              limit: 4
    t.uuid     "FACILITY_ACCESS_EVENT_ID"
    t.decimal  "AMOUNT",                               precision: 18, scale: 2
  end

  add_index "T_BLACKBOARD_TRANSACTION_LOG", ["ROW_ID"], name: "IX_T_BLACKBOARD_TRANSACTION_LOG"

  create_table "T_BRAND", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_BRAND", ["ROW_ID"], name: "IX_T_BRAND"

  create_table "T_CALENDAR", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.varchar  "NAME",                  limit: 50,                 null: false
    t.boolean  "IS_AVAILABLE_ONLINE",              default: false, null: false
  end

  add_index "T_CALENDAR", ["ROW_ID"], name: "IX_ROW_ID_T_CALENDAR"

  create_table "T_CALENDAR_ACTIVITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "CALENDAR_ID",                           null: false
    t.uuid     "ACTIVITY_TYPE_CV"
  end

  add_index "T_CALENDAR_ACTIVITY", ["ROW_ID"], name: "IX_ROW_ID_T_CALENDAR_ACTIVITY"

  create_table "T_CALENDAR_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "CALENDAR_ID",                           null: false
    t.uuid     "FACILITY_ID",                           null: false
  end

  add_index "T_CALENDAR_FACILITY", ["ROW_ID"], name: "IX_ROW_ID_T_CALENDAR_FACILITY"

  create_table "T_CALENDAR_FACILITY_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "CALENDAR_ID",                           null: false
    t.uuid     "FACILITY_TYPE_CV",                      null: false
  end

  add_index "T_CALENDAR_FACILITY_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_CALENDAR_FACILITY_TYPE"

  create_table "T_CALENDAR_PROGRAM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "CALENDAR_ID",                           null: false
    t.uuid     "COURSE_ID",                             null: false
  end

  add_index "T_CALENDAR_PROGRAM", ["ROW_ID"], name: "IX_ROW_ID_T_CALENDAR_PROGRAM"

  create_table "T_CALENDAR_PROGRAM_CLASSIFICATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                        null: false
    t.uuid     "CREATION_USER_ID",                          null: false
    t.datetime "CREATION_TIMESTAMP",                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                     null: false
    t.boolean  "IS_DELETED",                default: false, null: false
    t.uuid     "CALENDAR_ID",                               null: false
    t.uuid     "PROGRAM_CLASSIFICATION_ID",                 null: false
  end

  add_index "T_CALENDAR_PROGRAM_CLASSIFICATION", ["ROW_ID"], name: "IX_ROW_ID_T_CALENDAR_PROGRAM_CLASSIFICATION"

  create_table "T_CAPTURE_DEVICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 150,                 null: false
  end

  add_index "T_CAPTURE_DEVICE", ["ROW_ID"], name: "IX_ROW_ID_T_CAPTURE_DEVICE"

  create_table "T_CASH_ACCOUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_CASH_ACCOUNT", ["ROW_ID"], name: "IX_T_CASH_ACCOUNT"

  create_table "T_CATALOGUE_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                         null: false
    t.uuid     "CREATION_USER_ID",                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                      null: false
    t.boolean  "IS_DELETED",                                                 null: false
    t.varchar  "CODE",                  limit: 15,                           null: false
    t.varchar  "NAME",                  limit: 50
    t.varchar  "DESCRIPTION",           limit: 200
    t.uuid     "ITEM_TYPE_CV",                                               null: false
    t.decimal  "PRICE",                             precision: 18, scale: 0, null: false
    t.datetime "EFFECTIVE_DATE",                                             null: false
    t.datetime "EXPIRY_DATE"
    t.integer  "ORDINAL_POSITION",      limit: 4
  end

  add_index "T_CATALOGUE_ITEM", ["ROW_ID"], name: "IX_T_CATALOGUE_ITEM"

  create_table "T_CODE_VALUE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "VALUE",                 limit: 100,                 null: false
    t.integer  "ORDINAL_POSITION",      limit: 4
    t.datetime "EFFECTIVE_DATE",                                    null: false
    t.datetime "EXPIRY_DATE"
    t.uuid     "PARENT_ID"
    t.uuid     "GROUP_ID",                                          null: false
    t.boolean  "IS_SYSTEM",                         default: false, null: false
  end

  add_index "T_CODE_VALUE", ["ID", "PARENT_ID", "VALUE", "IS_DELETED"], name: "_dta_index_T_CODE_VALUE_5_1806629479__K1_K11_K7_K6_8_9_10_12_14"
  add_index "T_CODE_VALUE", ["IS_DELETED", "ID", "ROW_ID", "GROUP_ID", "PARENT_ID", "VALUE"], name: "_dta_index_T_CODE_VALUE_5_1806629479__K6_K1_K14_K12_K11_K7_8_9_10"
  add_index "T_CODE_VALUE", ["ROW_ID"], name: "IX_ROW_ID_T_CODE_VALUE"

  create_table "T_CODE_VALUE_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.varchar  "GROUP_NAME",            limit: 50,                 null: false
    t.uuid     "PARENT_GROUP_ID"
    t.boolean  "IS_SYSTEM",                        default: false, null: false
    t.boolean  "IS_USER_DEFINED",                  default: false, null: false
  end

  add_index "T_CODE_VALUE_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_CODE_VALUE_GROUP"

  create_table "T_COLOUR", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_COLOUR", ["ROW_ID"], name: "IX_ROW_ID_T_COLOUR"

  create_table "T_COMMUNICATION_EVENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                               null: false
    t.uuid     "CREATION_USER_ID",                                                 null: false
    t.datetime "CREATION_TIMESTAMP",                                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                            null: false
    t.boolean  "IS_DELETED",                                       default: false, null: false
    t.datetime "DATETIME_STARTED",                                                 null: false
    t.datetime "DATETIME_ENDED"
    t.text     "NOTE",                          limit: 2147483647
    t.uuid     "CONTACT_MECHANISM_TYPE_CV",                                        null: false
    t.uuid     "PURPOSE_TYPE_CV",                                                  null: false
    t.uuid     "STATUS_CV"
    t.uuid     "FROM_PARTY_ID",                                                    null: false
    t.uuid     "TO_PARTY_ID",                                                      null: false
    t.string   "CONTACT_MECHANISM_DESCRIPTION", limit: 100
    t.string   "LOCATION_DESCRIPTION",          limit: 100
    t.string   "SUBJECT",                       limit: 100
    t.uuid     "DIRECTION_TYPE_CV"
  end

  add_index "T_COMMUNICATION_EVENT", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_EVENT"

  create_table "T_COMMUNICATION_SCHEDULED_TASK", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",                    null: false
    t.uuid "COMMUNICATION_TASK_ID", null: false
  end

  add_index "T_COMMUNICATION_SCHEDULED_TASK", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_SCHEDULED_TASK"

  create_table "T_COMMUNICATION_TASK", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                              null: false
    t.uuid     "CREATION_USER_ID",                                                                null: false
    t.datetime "CREATION_TIMESTAMP",                                                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                           null: false
    t.boolean  "IS_DELETED",                                                      default: false, null: false
    t.string   "NAME",                                         limit: 100,                        null: false
    t.uuid     "CATEGORY_ID"
    t.uuid     "TEMPLATE_ID"
    t.text     "CRITERIA_STRING",                              limit: 2147483647
    t.text     "CRITERIA_SQL",                                 limit: 2147483647
    t.uuid     "TYPE_CV"
    t.text     "SUBJECT",                                      limit: 2147483647
    t.text     "BODY",                                         limit: 2147483647
    t.boolean  "OVERRIDE_EMAIL_TEMPLATE",                                         default: false
    t.boolean  "ATTACH_RECEIPT_FOR_CHILD_TAX_CREDIT_PURPOSES"
    t.text     "BODY_TEMPLATE",                                limit: 2147483647
    t.uuid     "COMMUNICATION_EVENT_PURPOSE_TYPE_CV"
  end

  add_index "T_COMMUNICATION_TASK", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK"

  create_table "T_COMMUNICATION_TASK_CATEGORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                    null: false
    t.datetime "UNTIL_DATE"
    t.string   "NAME",                  limit: 100,                 null: false
  end

  add_index "T_COMMUNICATION_TASK_CATEGORY", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_CATEGORY"

  create_table "T_COMMUNICATION_TASK_CATEGORY_ROLLUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                  null: false
    t.uuid     "CREATION_USER_ID",                                    null: false
    t.datetime "CREATION_TIMESTAMP",                                  null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                 null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                               null: false
    t.boolean  "IS_DELETED",                          default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                      null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "FROM_COMMUNICATION_TASK_CATEGORY_ID",                 null: false
    t.uuid     "TO_COMMUNICATION_TASK_CATEGORY_ID",                   null: false
  end

  add_index "T_COMMUNICATION_TASK_CATEGORY_ROLLUP", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_CATEGORY_ROLLUP"

  create_table "T_COMMUNICATION_TASK_COURSE_OFFERING", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",                 null: false
    t.uuid "COURSE_OFFERING_ID", null: false
  end

  add_index "T_COMMUNICATION_TASK_COURSE_OFFERING", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_COURSE_OFFERING"

  create_table "T_COMMUNICATION_TASK_CRITERIA", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                null: false
    t.uuid     "CREATION_USER_ID",                                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                             null: false
    t.boolean  "IS_DELETED",                                        default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                                    null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "COMMUNICATION_TASK_ID",                                             null: false
    t.uuid     "COMMUNICATION_CRITERIA_TYPE_CV"
    t.text     "CRITERIA_STRING",                limit: 2147483647
    t.text     "CRITERIA_SQL",                   limit: 2147483647
  end

  add_index "T_COMMUNICATION_TASK_CRITERIA", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_CRITERIA"

  create_table "T_COMMUNICATION_TASK_LOCKER_SERVICE_CRITERIA", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_COMMUNICATION_TASK_LOCKER_SERVICE_CRITERIA", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_LOCKER_SERVICE_CRITERIA"

  create_table "T_COMMUNICATION_TASK_LOCKER_SERVICE_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",                     null: false
    t.uuid "LOCKER_SERVICE_TYPE_ID", null: false
  end

  add_index "T_COMMUNICATION_TASK_LOCKER_SERVICE_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_LOCKER_SERVICE_TYPE"

  create_table "T_COMMUNICATION_TASK_MEMBERSHIP_CRITERIA", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_COMMUNICATION_TASK_MEMBERSHIP_CRITERIA", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_MEMBERSHIP_CRITERIA"

  create_table "T_COMMUNICATION_TASK_MEMBERSHIP_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",                 null: false
    t.uuid "MEMBERSHIP_TYPE_ID", null: false
  end

  add_index "T_COMMUNICATION_TASK_MEMBERSHIP_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_MEMBERSHIP_TYPE"

  create_table "T_COMMUNICATION_TASK_RECIPIENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "COMMUNICATION_TASK_ID",                             null: false
    t.uuid     "PERSON_ID"
    t.string   "EMAIL_ADDRESS",         limit: 100
    t.string   "FIRST_NAME",            limit: 50
    t.string   "LAST_NAME",             limit: 50
  end

  add_index "T_COMMUNICATION_TASK_RECIPIENT", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_RECIPIENT"

  create_table "T_COMMUNICATION_TASK_REGISTRATION_CRITERIA", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_COMMUNICATION_TASK_REGISTRATION_CRITERIA", ["ROW_ID"], name: "IX_ROW_ID_T_COMMUNICATION_TASK_REGISTRATION_CRITERIA"

  create_table "T_COMPUTER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                    null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                                    null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                 null: false
    t.boolean  "IS_DELETED",                                            default: false, null: false
    t.varchar  "NAME",                               limit: 100,                        null: false
    t.varchar  "DESCRIPTION",                        limit: 300
    t.boolean  "IS_ACTIVE"
    t.uuid     "FACILITY_ID"
    t.varchar  "RECEIPT_PRINTER_NAME",               limit: 300
    t.integer  "NUMBER_OF_RECEIPTS",                 limit: 4
    t.varchar  "RECEIPT_CUT_CODE",                   limit: 30
    t.varchar  "CASH_DRAWER_OPEN_CODE",              limit: 30
    t.varchar  "REPORT_PRINTER_NAME",                limit: 300
    t.varchar  "CARD_PRINTER_NAME",                  limit: 300
    t.uuid     "MAGNETIC_ENCODING_TYPE_CV"
    t.boolean  "IS_DOUBLE_SIDED_PRINTING_ENABLED"
    t.text     "MAC_ADDRESS",                        limit: 2147483647
    t.datetime "LAST_LOGIN_TIMESTAMP"
    t.uuid     "LAST_LOGIN_USER_ID"
    t.uuid     "POS_HOTKEY_PROFILE_ID"
    t.string   "CASH_DRAWER_NAME",                   limit: 100
    t.boolean  "IS_TOUCH_SCREEN_ENABLED"
    t.boolean  "IS_RECEIPT_PRINTER_ENABLED",                            default: false
    t.uuid     "STARTUP_WINDOW_CV"
    t.boolean  "IS_POS_MEMBERSHIP_ENABLED",                             default: false
    t.boolean  "IS_POS_LOCKER_SERVICE_ENABLED",                         default: false
    t.boolean  "IS_POS_TOWEL_SERVICE_ENABLED",                          default: false
    t.boolean  "IS_POS_COURSE_REGISTRATION_ENABLED",                    default: false
    t.boolean  "IS_POS_PRODUCT_SALES_ENABLED",                          default: false
    t.boolean  "IS_KIOSK_MODE"
    t.boolean  "IS_POS_FACILITY_RENTAL_ENABLED",                        default: false
    t.string   "BLACKBOARD_TERMINAL_NUMBER",         limit: 8
    t.string   "BLACKBOARD_TENDER_NUMBER",           limit: 4
    t.string   "BLACKBOARD_ENCRYPTION_KEY",          limit: 50
    t.string   "ONE_CARD_DEVICE_ID",                 limit: 50
    t.string   "ONE_CARD_DEVICE_DERIVED_KEY",        limit: 50
    t.string   "SHIFT4_UTG_HOST_IP_ADDRESS",         limit: 15
    t.string   "SHIFT4_UTG_HOST_PORT_NUMBER",        limit: 5
    t.string   "SHIFT4_PIN_PAD_TERMINAL_ID",         limit: 32
    t.integer  "SHIFT4_PIN_PAD_TIMEOUT",             limit: 4
    t.string   "APPLICATION_VERSION",                limit: 50
  end

  add_index "T_COMPUTER", ["ROW_ID"], name: "IX_ROW_ID_T_COMPUTER"

  create_table "T_COMPUTER_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "COMPUTER_ID",                                              null: false
    t.uuid     "COMPUTER_SETTING_CV",                                      null: false
    t.uuid     "DATA_TYPE_CV",                                             null: false
    t.text     "DATA",                  limit: 2147483647
  end

  add_index "T_COMPUTER_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_COMPUTER_SETTINGS"

  create_table "T_CONTACT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_CONTACT", ["ROW_ID"], name: "IX_ROW_ID_T_CONTACT"

  create_table "T_CONTACT_MECHANISM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                         null: false
    t.boolean "IS_DEFAULT", default: false, null: false
  end

  add_index "T_CONTACT_MECHANISM", ["ROW_ID"], name: "IX_ROW_ID_T_CONTACT_MECHANISM"

  create_table "T_CONTACT_RELATIONSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                           null: false
    t.uuid    "CONTACT_RELATIONSHIP_TYPE_CV"
    t.boolean "IS_EMERGENCY",                 default: false, null: false
    t.boolean "IS_AUTHORIZED_PICKUP_PERSON",  default: false, null: false
    t.boolean "IS_MAIN_CONTACT",              default: false, null: false
  end

  add_index "T_CONTACT_RELATIONSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_CONTACT_RELATIONSHIP"

  create_table "T_COURSE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                                                                           null: false
    t.boolean "IS_DROP_IN_PASS_REQUIRED"
    t.text    "RECEIPT_TEXT",                             limit: 2147483647
    t.boolean "IS_EMERGENCY_CONTACT_REQUIRED",                               default: false,                                  null: false
    t.boolean "IS_WAIT_LIST_ENABLED",                                        default: false,                                  null: false
    t.uuid    "REGISTRATION_PRIORITY_TYPE_CV"
    t.integer "MIN_AGE",                                  limit: 4,          default: 0,                                      null: false
    t.integer "MAX_AGE",                                  limit: 4,          default: 0,                                      null: false
    t.boolean "IS_AGE_RESTRICTED",                                           default: false,                                  null: false
    t.boolean "IS_MEMBERSHIP_REQUIRED",                                      default: false,                                  null: false
    t.boolean "PROMPT_FOR_AUTHORIZED_PICKUP_PERSON",                         default: false,                                  null: false
    t.boolean "ALLOW_WAIVER_SIGNING_DURING_REGISTRATION",                    default: true,                                   null: false
    t.boolean "ALLOW_WAIVER_SIGNING_AFTER_REGISTRATION",                     default: false,                                  null: false
    t.boolean "ALLOW_ONE_REGISTRATION_PER_SEMESTER",                         default: false,                                  null: false
    t.boolean "IS_WAIVER_REQUIRED",                                          default: false,                                  null: false
    t.boolean "USE_HEAD_OF_HOUSEHOLD_EMAIL",                                 default: false,                                  null: false
    t.uuid    "PROGRAM_CLASSIFICATION_ID"
    t.uuid    "SCHEDULE_TYPE_CV",                                            default: "00000000-0000-0000-0000-000000003871", null: false
    t.boolean "IS_CHECK_IN_ENABLED",                                         default: false,                                  null: false
    t.boolean "IS_SIGNATURE_REQUIRED",                                       default: false,                                  null: false
  end

  add_index "T_COURSE", ["ROW_ID"], name: "IX_ROW_ID_T_COURSE"

  create_table "T_COURSE_OFFERING", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                                     null: false
    t.uuid     "CREATION_USER_ID",                                                                                       null: false
    t.datetime "CREATION_TIMESTAMP",                                                                                     null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                                    null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                                  null: false
    t.boolean  "IS_DELETED",                                                                             default: false, null: false
    t.uuid     "COURSE_ID",                                                                                              null: false
    t.string   "NAME",                                        limit: 150,                                                null: false
    t.integer  "SIZE",                                        limit: 4
    t.integer  "GO_SIZE",                                     limit: 4
    t.datetime "GO_DATE"
    t.boolean  "IS_CANCELLED",                                                                           default: false, null: false
    t.uuid     "SEMESTER_ID"
    t.datetime "REGISTRATION_OPENS_DATE"
    t.datetime "REGISTRATION_CLOSES_DATE"
    t.text     "NOTES",                                       limit: 2147483647
    t.boolean  "IS_ONLINE_BROWSING_ALLOWED",                                                             default: false
    t.boolean  "IS_ONLINE_RESERVATION_ALLOWED",                                                          default: false
    t.boolean  "IS_ONLINE_REGISTRATION_ALLOWED",                                                         default: false
    t.boolean  "IS_IN_PERSON_REGISTRATION_ALLOWED",                                                      default: false
    t.text     "RECEIPT_TEXT",                                limit: 2147483647
    t.boolean  "PROMPT_FOR_SELF_SIGN_OUT",                                                               default: false
    t.text     "WEB_NOTES",                                   limit: 2147483647
    t.boolean  "IS_WEB_NOTES_HTML",                                                                      default: false, null: false
    t.binary   "CONFIRMATION_NOTES",                          limit: 2147483647
    t.boolean  "IS_PHONE_REGISTRATION_ALLOWED",                                                          default: true
    t.uuid     "PARKING_PERMIT_ID"
    t.integer  "ORDINAL_POSITION",                            limit: 4,                                  default: 1,     null: false
    t.boolean  "IS_ELIGIBLE_FOR_CHILD_FITNESS_TAX_CREDIT",                                               default: false, null: false
    t.decimal  "CHILD_FITNESS_TAX_CREDIT_PRORATE_PERCENTAGE",                    precision: 7, scale: 3
    t.boolean  "SHOW_SCHEDULE_ONLINE",                                                                   default: true
    t.boolean  "SHOW_SCHEDULE_ON_CONFIRMATION",                                                          default: true
    t.datetime "ONLINE_REGISTRATION_OPENS_DATE"
    t.datetime "ONLINE_REGISTRATION_CLOSES_DATE"
    t.boolean  "IS_ONLINE_REGISTRATION_PERIOD_ENABLED",                                                  default: false, null: false
    t.integer  "WAITING_LIST_SIZE",                           limit: 4
  end

  add_index "T_COURSE_OFFERING", ["COURSE_ID", "SEMESTER_ID"], name: "T_COURSE_OFFERING_COURSE_ID_SEMESTER_ID"
  add_index "T_COURSE_OFFERING", ["IS_CANCELLED", "SEMESTER_ID", "IS_IN_PERSON_REGISTRATION_ALLOWED"], name: "T_COURSE_OFFERING_IS_CANCELLED_SEMESTER_ID_IS_IN_PERSON_REGISTRATION_ALLOWED"
  add_index "T_COURSE_OFFERING", ["IS_DELETED", "COURSE_ID", "IS_CANCELLED", "SEMESTER_ID"], name: "T_COURSE_OFFERING_IS_DELETED_COURSE_ID_IS_CANCELLED_SEMESTER_ID"
  add_index "T_COURSE_OFFERING", ["IS_DELETED", "COURSE_ID"], name: "T_COURSE_OFFERING_IS_DELETED_COURSE_ID"
  add_index "T_COURSE_OFFERING", ["ROW_ID"], name: "IX_ROW_ID_T_COURSE_OFFERING"
  add_index "T_COURSE_OFFERING", ["SEMESTER_ID"], name: "T_COURSE_OFFERING_SEMESTER_ID_COURSE_ID"

  create_table "T_COURSE_PASS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                             null: false
    t.boolean "ALLOW_UNLIMITED_USES"
    t.integer "NUMBER_OF_USES",       limit: 4
  end

  add_index "T_COURSE_PASS", ["ROW_ID"], name: "IX_ROW_ID_T_COURSE_PASS"

  create_table "T_COURSE_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                         null: false
    t.uuid     "CREATION_USER_ID",                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                      null: false
    t.boolean  "IS_DELETED",                                 default: false, null: false
    t.boolean  "SHOW_COURSE_CONFIRMATION_OPTIONS"
    t.integer  "MINIMUM_SELF_SIGN_OUT_AGE",        limit: 4
    t.boolean  "IS_WEB_CATEGORIES_ENABLED",                  default: false, null: false
  end

  add_index "T_COURSE_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_COURSE_SETTINGS"

  create_table "T_COURT_RESERVATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                null: false
    t.uuid    "ACTIVITY_TYPE_CV",                                  null: false
    t.integer "TIME_SLOT_LENGTH_MINUTES",                limit: 4
    t.integer "NUMBER_OF_DAYS_CAN_BOOK_IN_ADVANCE",      limit: 4
    t.integer "MAXIMUM_BOOKINGS_PER_DAY_PER_PERSON",     limit: 4
    t.integer "MAXIMUM_CONCURRENT_BOOKINGS_PER_PERSON",  limit: 4
    t.integer "MAXIMUM_CONSECUTIVE_BOOKINGS_PER_PERSON", limit: 4
    t.integer "MAXIMUM_NUMBER_OF_ATTENDEES",             limit: 4
  end

  add_index "T_COURT_RESERVATION", ["ROW_ID"], name: "IX_ROW_ID_T_COURT_RESERVATION"

  create_table "T_COURT_RESERVATION_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "COURT_RESERVATION_ID",                  null: false
    t.uuid     "FACILITY_ID",                           null: false
  end

  add_index "T_COURT_RESERVATION_FACILITY", ["ROW_ID"], name: "IX_ROW_ID_T_COURT_RESERVATION_FACILITY"

  create_table "T_COURT_RESERVATION_OPERATING_HOURS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "COURT_RESERVATION_ID",                  null: false
    t.uuid     "OPERATING_HOURS_ID",                    null: false
  end

  add_index "T_COURT_RESERVATION_OPERATING_HOURS", ["ROW_ID"], name: "IX_ROW_ID_T_COURT_RESERVATION_OPERATING_HOURS"

  create_table "T_CUSTOMER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_CUSTOMER", ["ROW_ID"], name: "IX_ROW_ID_T_CUSTOMER"

  create_table "T_CUSTOM_DATE_RANGE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.datetime "EFFECTIVE_DATE"
    t.datetime "UNTIL_DATE"
    t.string   "NAME",                         limit: 100,                 null: false
    t.boolean  "IS_EFFECTIVE_DATE_SET",                    default: true,  null: false
    t.boolean  "IS_UNTIL_DATE_SET",                        default: true,  null: false
    t.integer  "EFFECTIVE_DATE_WEEK_OF_MONTH", limit: 4
    t.integer  "EFFECTIVE_DATE_WEEK_DAY",      limit: 4
    t.integer  "EFFECTIVE_DATE_MONTH",         limit: 4
    t.integer  "UNTIL_DATE_WEEK_OF_MONTH",     limit: 4
    t.integer  "UNTIL_DATE_WEEK_DAY",          limit: 4
    t.integer  "UNTIL_DATE_MONTH",             limit: 4
    t.datetime "ROLLOVER_DATE"
    t.uuid     "BASE_PERIOD_ID"
    t.boolean  "IS_ROLLOVER_DATE_SET",                     default: true,  null: false
    t.integer  "ROLLOVER_DATE_WEEK_OF_MONTH",  limit: 4
    t.integer  "ROLLOVER_DATE_WEEK_DAY",       limit: 4
    t.integer  "ROLLOVER_DATE_MONTH",          limit: 4
  end

  add_index "T_CUSTOM_DATE_RANGE", ["ROW_ID"], name: "IX_ROW_ID_T_CUSTOM_DATE_RANGE"

  create_table "T_CUSTOM_FIELD", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                        null: false
    t.uuid     "CREATION_USER_ID",                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                     null: false
    t.boolean  "IS_DELETED",                                default: false, null: false
    t.string   "NAME",                   limit: 50,                         null: false
    t.uuid     "FIELD_TYPE_CV",                                             null: false
    t.uuid     "CODE_VALUE_GROUP_ID"
    t.uuid     "RELATED_ENTITY_TYPE_CV",                                    null: false
    t.boolean  "IS_REQUIRED",                                               null: false
    t.text     "DEFAULT_VALUE",          limit: 2147483647
    t.integer  "ORDINAL_POSITION",       limit: 4,                          null: false
    t.boolean  "IS_VALUE_ENCRYPTED",                        default: false, null: false
  end

  add_index "T_CUSTOM_FIELD", ["ROW_ID"], name: "IX_ROW_ID_T_CUSTOM_FIELD"

  create_table "T_CUSTOM_FIELD_SECURITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "SECURITY_ROLE_ID",                      null: false
    t.uuid     "CUSTOM_FIELD_ID",                       null: false
    t.uuid     "PERMISSION_TYPE_CV",                    null: false
  end

  add_index "T_CUSTOM_FIELD_SECURITY", ["ROW_ID"], name: "IX_ROW_ID_T_SECURITY_ROLE_CUSTOM_FIELD"

  create_table "T_CUSTOM_FIELD_VALUE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "CUSTOM_FIELD_ID",                                          null: false
    t.text     "VALUE",                 limit: 2147483647
    t.uuid     "RELATED_ENTITY_ID",                                        null: false
    t.boolean  "IS_ENCRYPTED",                             default: false, null: false
  end

  add_index "T_CUSTOM_FIELD_VALUE", ["CUSTOM_FIELD_ID", "IS_ENCRYPTED"], name: "T_CUSTOM_FIELD_VALUE_CUSTOM_FIELD_ID_IS_ENCRYPTED"
  add_index "T_CUSTOM_FIELD_VALUE", ["CUSTOM_FIELD_ID", "RELATED_ENTITY_ID", "IS_ENCRYPTED"], name: "T_CUSTOM_FIELD_FIELD_VALUE_CUSTOM_FIELD_ID_RELATED_ENTITY_ID"
  add_index "T_CUSTOM_FIELD_VALUE", ["IS_DELETED", "CUSTOM_FIELD_ID", "RELATED_ENTITY_ID"], name: "T_CUSTOM_FIELD_VALUE_IS_DELETED_CUSTOM_FIELD_ID_RELATED_ENTITY_ID"
  add_index "T_CUSTOM_FIELD_VALUE", ["ROW_ID"], name: "IX_ROW_ID_T_CUSTOM_FIELD_VALUE"

  create_table "T_CUSTOM_PROMPT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                    null: false
    t.uuid     "CREATION_USER_ID",                                      null: false
    t.datetime "CREATION_TIMESTAMP",                                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                 null: false
    t.boolean  "IS_DELETED",                            default: false, null: false
    t.uuid     "PRODUCT_ID",                                            null: false
    t.string   "TITLE",                     limit: 100,                 null: false
    t.uuid     "PROMPT_TYPE_CV",                                        null: false
    t.integer  "ORDINAL_POSITION",          limit: 4,                   null: false
    t.datetime "EFFECTIVE_DATE",                                        null: false
    t.datetime "UNTIL_DATE"
    t.string   "MESSAGE",                   limit: 500
    t.uuid     "CODE_VALUE_GROUP_ID"
    t.uuid     "MEMBER_FIELD_CV"
    t.uuid     "CUSTOM_FIELD_ID"
    t.boolean  "PROMPT_AT_SALE",                        default: true,  null: false
    t.boolean  "PROMPT_AT_REFUND",                      default: false, null: false
    t.boolean  "IS_REQUIRED",                           default: false, null: false
    t.boolean  "IS_VALUE_ENCRYPTED",                    default: false, null: false
    t.boolean  "PROMPT_AT_SELF_ENROLLMENT",             default: false
  end

  add_index "T_CUSTOM_PROMPT", ["IS_DELETED", "PRODUCT_ID", "PROMPT_AT_SALE"], name: "T_CUSTOM_PROMPT_IS_DELETED_PRODUCT_ID_PROMPT_AT_SALE"
  add_index "T_CUSTOM_PROMPT", ["ROW_ID"], name: "IX_ROW_ID_T_CUSTOM_PROMPT"

  create_table "T_CUSTOM_PROMPT_VALUE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "CUSTOM_PROMPT_ID",                                         null: false
    t.uuid     "ORDER_ITEM_ID"
    t.text     "VALUE",                 limit: 2147483647
    t.boolean  "IS_ENCRYPTED",                             default: false, null: false
    t.uuid     "AGREEMENT_ID"
  end

  add_index "T_CUSTOM_PROMPT_VALUE", ["IS_DELETED", "CUSTOM_PROMPT_ID", "ORDER_ITEM_ID"], name: "T_CUSTOM_PROMPT_VALUE_IS_DELETED_CUSTOM_PROMPT_ID_ORDER_ITEM_ID"
  add_index "T_CUSTOM_PROMPT_VALUE", ["ROW_ID"], name: "IX_ROW_ID_T_CUSTOM_PROMPT_VALUE"

  create_table "T_CUSTOM_REPORT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.boolean  "IS_ENABLED",                                        null: false
    t.string   "NAME",                  limit: 100,                 null: false
    t.string   "DESCRIPTION",           limit: 300
    t.uuid     "QUERY_TASK_ID",                                     null: false
  end

  add_index "T_CUSTOM_REPORT", ["ROW_ID"], name: "IX_ROW_ID_CUSTOM_REPORT"

  create_table "T_DIMENSION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                               null: false
    t.uuid    "UNIT_OF_MEASURE_TYPE_CV",                          null: false
    t.decimal "NUMBER_SPECIFIED",        precision: 18, scale: 4, null: false
  end

  add_index "T_DIMENSION", ["ROW_ID"], name: "IX_ROW_ID_T_DIMENSION"

  create_table "T_DISCOUNT_COMPONENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_DISCOUNT_COMPONENT", ["ROW_ID"], name: "IX_ROW_ID_T_DISCOUNT_COMPONENT"

  create_table "T_DOCUMENT_TEMPLATE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                        null: false
    t.uuid     "CREATION_USER_ID",                                                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                     null: false
    t.boolean  "IS_DELETED",                               default: false,                                  null: false
    t.datetime "EFFECTIVE_DATE",                                                                            null: false
    t.datetime "UNTIL_DATE"
    t.string   "NAME",                  limit: 100,                                                         null: false
    t.binary   "CONTENTS",              limit: 2147483647
    t.uuid     "DOCUMENT_TYPE_CV",                         default: "00000000-0000-0000-0000-000000003988"
  end

  add_index "T_DOCUMENT_TEMPLATE", ["ROW_ID"], name: "IX_ROW_ID_T_DOCUMENT_TEMPLATE"

  create_table "T_DOCUMENT_TEMPLATE_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                            null: false
    t.uuid     "CREATION_USER_ID",                                              null: false
    t.string   "NAME",                                       limit: 100,        null: false
    t.datetime "VALID_FROM",                                                    null: false
    t.datetime "VALID_UNTIL",                                                   null: false
    t.binary   "CONTENTS",                                   limit: 2147483647
    t.boolean  "IS_WAIVER",                                                     null: false
    t.boolean  "IS_MIN_AGE_REQUIRED"
    t.integer  "MIN_AGE",                                    limit: 4
    t.boolean  "IS_ACCEPTANCE_REQUIRED_FOR_FACILITY_ACCESS"
    t.integer  "RENEWAL_WINDOW_DAYS",                        limit: 4
    t.datetime "ANNUAL_EXPIRY_DAY"
  end

  add_index "T_DOCUMENT_TEMPLATE_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_DOCUMENT_TEMPLATE_HISTORY"

  create_table "T_DOCUMENT_TEMPLATE_RELATIONSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                     null: false
    t.uuid     "CREATION_USER_ID",                       null: false
    t.datetime "CREATION_TIMESTAMP",                     null: false
    t.uuid     "LAST_UPDATE_USER_ID",                    null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                  null: false
    t.boolean  "IS_DELETED",             default: false, null: false
    t.datetime "EFFECTIVE_DATE",                         null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "RELATED_ENTITY_TYPE_CV"
    t.uuid     "RELATED_ENTITY_ID",                      null: false
    t.uuid     "DOCUMENT_TEMPLATE_ID",                   null: false
  end

  add_index "T_DOCUMENT_TEMPLATE_RELATIONSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_DOCUMENT_TEMPLATE_RELATIONSHIP"

  create_table "T_DURATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "PRODUCT_ID",                                      null: false
    t.uuid     "DURATION_TYPE_CV",                                null: false
    t.integer  "QUANTITY",              limit: 4,                 null: false
  end

  add_index "T_DURATION", ["ROW_ID"], name: "IX_ROW_ID_T_DURATION"

  create_table "T_EFT_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                    null: false
    t.uuid     "CREATION_USER_ID",                                      null: false
    t.datetime "CREATION_TIMESTAMP",                                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                 null: false
    t.boolean  "IS_DELETED",                            default: false, null: false
    t.string   "IMMEDIATE_ORIGIN",           limit: 50
    t.string   "DESTINATION_NAME",           limit: 50
    t.string   "ORIGIN_NAME",                limit: 50
    t.string   "COMPANY_NAME",               limit: 50
    t.string   "COMPANY_DISCRETIONARY_DATA", limit: 50
    t.string   "COMPANY_ID",                 limit: 50
    t.boolean  "USE_NACHA_FORMAT",                      default: false, null: false
    t.string   "IMMEDIATE_DESTINATION",      limit: 50
  end

  add_index "T_EFT_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_EFT_SETTINGS"

  create_table "T_EMAIL_ADDRESS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "EMAIL_TYPE_CV"
    t.string   "ADDRESS",               limit: 100,                 null: false
  end

  add_index "T_EMAIL_ADDRESS", ["IS_DELETED", "ADDRESS"], name: "Index_EmailAddressIsDeletedAddress"
  add_index "T_EMAIL_ADDRESS", ["IS_DELETED"], name: "T_EMAIL_ADDRESS_IS_DELETED"
  add_index "T_EMAIL_ADDRESS", ["ROW_ID"], name: "IX_ROW_ID_T_EMAIL_ADDRESS"

  create_table "T_EMAIL_ATTACHMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "EMAIL_ID",                                          null: false
    t.string   "FILENAME",              limit: 200,                 null: false
    t.nchar    "DATA",                  limit: 10,                  null: false
  end

  add_index "T_EMAIL_ATTACHMENT", ["ROW_ID"], name: "IX_ROW_ID_T_EMAIL_ATTACHMENT"

  create_table "T_EMAIL_TEMPLATE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.string   "NAME",                  limit: 150,                        null: false
    t.string   "DESCRIPTION",           limit: 3000
    t.text     "TEMPLATE_TEXT",         limit: 2147483647,                 null: false
    t.boolean  "IS_HTML",                                  default: false, null: false
    t.text     "SUBJECT_TEMPLATE_TEXT", limit: 2147483647
    t.boolean  "IS_SYSTEM",                                default: false, null: false
  end

  add_index "T_EMAIL_TEMPLATE", ["ROW_ID"], name: "IX_ROW_ID_T_EMAIL_TEMPLATE"

  create_table "T_EMPLOYMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                    null: false
    t.uuid     "CREATION_USER_ID",                                      null: false
    t.datetime "CREATION_TIMESTAMP",                                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                 null: false
    t.boolean  "IS_DELETED",                            default: false, null: false
    t.datetime "HIRE_DATE"
    t.datetime "TERMINATION_DATE"
    t.uuid     "TERMINATION_TYPE_CV"
    t.uuid     "TERMINATION_REASON_TYPE_CV"
    t.varchar  "PAYROLL_ID",                 limit: 50
    t.uuid     "PAYROLL_PROVIDER_ID"
    t.datetime "FIRST_DAY_WORKED"
    t.datetime "LAST_DAY_WORKED"
  end

  add_index "T_EMPLOYMENT", ["ROW_ID"], name: "IX_ROW_ID_T_EMPLOYMENT"

  create_table "T_EQUIPMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                        null: false
    t.boolean "IS_PACKAGE",                                default: false, null: false
    t.boolean "IS_MULTI_DAY_CHECKOUT_ALLOWED",             default: false, null: false
    t.integer "MAX_CHECKOUT_DAYS",               limit: 4
    t.boolean "ALLOW_CHECK_IN_AT_ANY_FACILITY",            default: false, null: false
    t.integer "ADVANCE_RESERVATION_PERIOD_DAYS", limit: 4
    t.integer "QUANTITY_IN_CIRCULATION",         limit: 4
  end

  add_index "T_EQUIPMENT", ["ROW_ID"], name: "IX_ROW_ID_T_EQUIPMENT"

  create_table "T_EQUIPMENT_ACCESS_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_EQUIPMENT_ACCESS_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_EQUIPMENT_ACCESS_GROUP"

  create_table "T_EQUIPMENT_TRANSACTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                      null: false
    t.uuid     "CREATION_USER_ID",                                        null: false
    t.datetime "CREATION_TIMESTAMP",                                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                   null: false
    t.boolean  "IS_DELETED",                              default: false, null: false
    t.boolean  "IS_RESERVATION",                          default: false, null: false
    t.string   "RESERVATION_NUMBER",          limit: 100
    t.uuid     "RESERVATION_STATUS_CV"
    t.datetime "RESERVATION_PICKUP_DATETIME"
    t.datetime "RESERVATION_EXPIRY_DATETIME"
    t.datetime "CHECKED_OUT_DATETIME"
    t.datetime "DUE_DATETIME"
    t.uuid     "PARTY_ID"
    t.uuid     "FACILITY_ID"
  end

  add_index "T_EQUIPMENT_TRANSACTION", ["CHECKED_OUT_DATETIME"], name: "T_EQUIPMENT_TRANSACTION_CHECKED_OUT_DATETIME"
  add_index "T_EQUIPMENT_TRANSACTION", ["PARTY_ID"], name: "T_EQUIPMENT_TRANSACTION_PARTY_ID"
  add_index "T_EQUIPMENT_TRANSACTION", ["ROW_ID"], name: "IX_ROW_ID_T_EQUIPMENT_TRANSACTION"

  create_table "T_EQUIPMENT_TRANSACTION_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                null: false
    t.uuid     "CREATION_USER_ID",                                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                             null: false
    t.boolean  "IS_DELETED",                                        default: false, null: false
    t.uuid     "EQUIPMENT_TRANSACTION_ID",                                          null: false
    t.uuid     "PRODUCT_ID"
    t.uuid     "INVENTORY_ITEM_ID"
    t.datetime "CHECKED_IN_DATETIME"
    t.boolean  "IS_TOWEL",                                          default: false, null: false
    t.datetime "DUE_DATETIME"
    t.uuid     "PRICE_ID"
    t.decimal  "PRICE",                    precision: 18, scale: 4
    t.datetime "CHECKED_OUT_DATETIME"
  end

  add_index "T_EQUIPMENT_TRANSACTION_ITEM", ["IS_DELETED", "CHECKED_IN_DATETIME"], name: "IX_T_EQUIPMENT_TRANSACTION_ITEM_IS_DELETED_CHECKED_IN_DATETIME"
  add_index "T_EQUIPMENT_TRANSACTION_ITEM", ["IS_DELETED", "CHECKED_IN_DATETIME"], name: "T_EQUIPMENT_TRANSACTION_ITEM_IS_DELETED_CHECKED_IN_DATETIME"
  add_index "T_EQUIPMENT_TRANSACTION_ITEM", ["IS_DELETED", "CHECKED_IN_DATETIME"], name: "index_EquipmentTransactionItemIsDeletedCheckIn"
  add_index "T_EQUIPMENT_TRANSACTION_ITEM", ["IS_DELETED", "INVENTORY_ITEM_ID"], name: "T_EQUIPMENT_TRANSACTION_ITEM_IS_DELETED_INVENTORY_ITEM_ID"
  add_index "T_EQUIPMENT_TRANSACTION_ITEM", ["IS_DELETED"], name: "T_EQUIPMENT_TRANSACTION_ITEM_IS_DELETED"
  add_index "T_EQUIPMENT_TRANSACTION_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_EQUIPMENT_TRANSACTION_ITEM"

  create_table "T_ESTIMATED_PRODUCT_COST", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                              null: false
    t.uuid     "CREATION_USER_ID",                                                null: false
    t.datetime "CREATION_TIMESTAMP",                                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                           null: false
    t.boolean  "IS_DELETED",                                      default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                                  null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "PRODUCT_ID"
    t.uuid     "PRODUCT_FEATURE_ID"
    t.uuid     "ORGANIZATION_ID"
    t.uuid     "COST_COMPONENT_TYPE_CV"
    t.decimal  "COST",                   precision: 18, scale: 4,                 null: false
    t.uuid     "GEOGRAPHIC_LOCATION_ID"
  end

  add_index "T_ESTIMATED_PRODUCT_COST", ["ROW_ID"], name: "IX_ROW_ID_T_ESTIMATED_PRODUCT_COST"

  create_table "T_EVENT_SOUND", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "EVENT_TYPE_CV",                                            null: false
    t.binary   "SOUND_DATA",            limit: 2147483647
    t.string   "FILENAME",              limit: 100
  end

  add_index "T_EVENT_SOUND", ["ROW_ID"], name: "IX_ROW_ID_T_EVENT_SOUND"

  create_table "T_EXTERNAL_ACCOUNTING_TRANSACTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "TRANSACTION_ID", null: false
    t.uuid "FROM_PARTY_ID",  null: false
    t.uuid "TO_PARTY_ID"
  end

  add_index "T_EXTERNAL_ACCOUNTING_TRANSACTION", ["ROW_ID"], name: "IX_ROW_ID_T_EXTERNAL_ACCOUNTING_TRANSACTION"

  create_table "T_EXTERNAL_ID_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 100,                 null: false
    t.integer  "HKII_LOOKUP_PRIORITY",  limit: 4,   default: 0,     null: false
    t.integer  "MIN_LENGTH",            limit: 4,   default: 0,     null: false
    t.integer  "MAX_LENGTH",            limit: 4,   default: 0,     null: false
    t.boolean  "IS_BLACKBOARD_ID",                  default: false, null: false
    t.boolean  "IS_PRIMARY_ID",                     default: false, null: false
    t.boolean  "IS_IMAGE_SERVICE_ID",               default: false, null: false
    t.boolean  "IS_ONE_CARD_ID",                    default: false, null: false
    t.boolean  "IS_SHALA_ID",                       default: false, null: false
  end

  add_index "T_EXTERNAL_ID_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_EXTERNAL_ID_TYPE"

  create_table "T_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                            null: false
    t.uuid     "CREATION_USER_ID",                                                                              null: false
    t.datetime "CREATION_TIMESTAMP",                                                                            null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                           null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                         null: false
    t.boolean  "IS_DELETED",                                                                    default: false, null: false
    t.uuid     "PART_OF_FACILITY_ID"
    t.varchar  "NAME",                                    limit: 100,                                           null: false
    t.varchar  "DESCRIPTION",                             limit: 3000
    t.uuid     "FACILITY_TYPE_CV"
    t.decimal  "SQUARE_FOOTAGE",                                       precision: 18, scale: 0
    t.uuid     "ALLOWABLE_GENDERS_CV"
    t.boolean  "CAN_SCHEDULE",                                                                  default: false, null: false
    t.boolean  "CAN_SCHEDULE_INTERNAL",                                                         default: false, null: false
    t.boolean  "CAN_SCHEDULE_EXTERNAL",                                                         default: false, null: false
    t.boolean  "ALLOW_CONCURRENT_BOOKINGS",                                                     default: false, null: false
    t.boolean  "CAN_RECEIVE_INVENTORY",                                                         default: false, null: false
    t.boolean  "IS_ONLINE_RESERVATION_REQUEST_ALLOWED",                                         default: false, null: false
    t.varchar  "PRODUCT_CODE",                            limit: 50
    t.boolean  "IS_WAREHOUSE",                                                                  default: false
    t.integer  "MAXIMUM_OCCUPANCY",                       limit: 4
    t.boolean  "IS_BOOKABLE",                                                                   default: false
    t.integer  "NUMBER_OF_DAYS_CAN_BOOK_IN_ADVANCE",      limit: 4
    t.integer  "MAXIMUM_BOOKINGS_PER_DAY_PER_PERSON",     limit: 4
    t.integer  "MAXIMUM_CONCURRENT_BOOKINGS_PER_PERSON",  limit: 4
    t.integer  "MAXIMUM_CONSECUTIVE_BOOKINGS_PER_PERSON", limit: 4
    t.boolean  "IS_RENTABLE",                                                                   default: false, null: false
    t.boolean  "IS_VISIBLE_ONLINE",                                                             default: false, null: false
  end

  add_index "T_FACILITY", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY"

  create_table "T_FACILITY_ACCESS_EVENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                    null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                                                    null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                 null: false
    t.boolean  "IS_DELETED",                                                            default: false, null: false
    t.uuid     "FACILITY_ID"
    t.uuid     "HARDWARE_DEVICE_ID"
    t.string   "SCANNER_DATA",                      limit: 100
    t.string   "TRACK1_DATA",                       limit: 100
    t.string   "TRACK2_DATA",                       limit: 50
    t.string   "TRACK3_DATA",                       limit: 150
    t.string   "PARSED_DATA",                       limit: 150
    t.string   "PARSED_VERSION",                    limit: 50
    t.uuid     "PERSON_ID"
    t.uuid     "MEMBERSHIP_ID"
    t.boolean  "ACCESS_GRANTED",                                                        default: false, null: false
    t.uuid     "FACILITY_ENTRY_DENIED_CV"
    t.boolean  "IS_FORGOT_ID_PENALTY",                                                  default: false, null: false
    t.boolean  "IS_MANUAL_LOOKUP",                                                      default: false, null: false
    t.boolean  "IS_ACCESS_MEDIA_PRESENT"
    t.boolean  "IS_ACCESS_MEDIA_SWIPED"
    t.boolean  "IS_HK2_ACCESS_EVENT",                                                   default: false, null: false
    t.boolean  "IS_HAND_VERIFIED",                                                      default: false, null: false
    t.integer  "HAND_VERIFICATION_SCORE",           limit: 4
    t.boolean  "IS_ELIGIBILITY_VERIFIED",                                               default: false, null: false
    t.decimal  "SECONDS_TO_VERIFY_ELIGIBILITY",                 precision: 5, scale: 2
    t.uuid     "ACCESS_GROUP_ID"
    t.uuid     "GUEST_PASS_INSTANCE_ID"
    t.integer  "EXECUTION_TIME",                    limit: 4
    t.string   "FACILITY_ENTRY_DENIED_DESCRIPTION", limit: 200
    t.uuid     "MULTI_VISIT_PASS_INSTANCE_ID"
    t.uuid     "EXIT_HARDWARE_DEVICE_ID"
    t.datetime "EXIT_TIMESTAMP"
    t.integer  "VISIT_DURATION_MINUTES",            limit: 4
    t.integer  "QUANTITY",                          limit: 4,                           default: 1,     null: false
    t.boolean  "IS_GROUP_ACCESS",                                                       default: false, null: false
  end

  add_index "T_FACILITY_ACCESS_EVENT", ["IS_DELETED", "PERSON_ID", "ACCESS_GRANTED", "IS_FORGOT_ID_PENALTY"], name: "Index_FacilityAccessEventIsDeletedPersonIdAccessGrantedIsForgotIdPenaltyCreationTimestamp"
  add_index "T_FACILITY_ACCESS_EVENT", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_ACCESS_EVENT"

  create_table "T_FACILITY_ACCESS_EVENT_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                   null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP"
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP"
    t.boolean  "IS_DELETED",                                           default: false
    t.uuid     "PERSON_ID"
    t.string   "FIRST_NAME",                        limit: 50
    t.string   "LAST_NAME",                         limit: 50
    t.text     "EXTERNAL_ID_NUMBERS",               limit: 2147483647
    t.uuid     "GENDER_CV"
    t.boolean  "ACCESS_GRANTED"
    t.uuid     "FACILITY_ENTRY_DENIED_CV"
    t.string   "FACILITY_ENTRY_DENIED_DESCRIPTION", limit: 200
    t.uuid     "FACILITY_ID"
    t.string   "FACILITY_NAME",                     limit: 150
    t.uuid     "COMPUTER_ID"
    t.string   "COMPUTER_NAME",                     limit: 150
    t.uuid     "HARDWARE_DEVICE_ID"
    t.string   "HARDWARE_DEVICE_NAME",              limit: 150
    t.boolean  "IS_MANUAL_LOOKUP"
    t.boolean  "IS_FORGOT_ID_PENALTY"
    t.boolean  "IS_ACCESS_MEDIA_PRESENT"
    t.string   "SCANNED_DATA",                      limit: 100
    t.integer  "FORGOT_CARD_COUNT",                 limit: 4
    t.uuid     "MEMBERSHIP_ID"
    t.string   "MEMBERSHIP_NAME",                   limit: 50
    t.uuid     "ACCESS_GROUP_ID"
    t.string   "ACCESS_GROUP_NAME",                 limit: 100
    t.string   "GUEST_PASS_ID_NUMBER",              limit: 50
    t.uuid     "GUEST_PASS_INSTANCE_ID"
    t.string   "IMAGE_FILE_NAME",                   limit: 100
    t.binary   "THUMBNAIL_MEDIUM",                  limit: 2147483647
    t.string   "MULTI_VISIT_PASS_ID_NUMBER",        limit: 50
    t.uuid     "MULTI_VISIT_PASS_INSTANCE_ID"
    t.uuid     "EXIT_HARDWARE_DEVICE_ID"
    t.datetime "EXIT_TIMESTAMP"
    t.integer  "VISIT_DURATION_MINUTES",            limit: 4
    t.string   "EXIT_HARDWARE_DEVICE_NAME",         limit: 50
    t.string   "EXIT_COMPUTER_NAME",                limit: 100
    t.uuid     "EXIT_COMPUTER_ID"
    t.integer  "MULTI_VISIT_PASS_REMAINING_USAGE",  limit: 4,          default: 0
    t.text     "EMAIL_ADDRESSES",                   limit: 2147483647
    t.integer  "QUANTITY",                          limit: 4,          default: 1,     null: false
    t.boolean  "IS_GROUP_ACCESS",                                      default: false, null: false
  end

  add_index "T_FACILITY_ACCESS_EVENT_HISTORY", ["CREATION_TIMESTAMP"], name: "IX_T_FACILITY_ACCESS_EVENT_HISTORY_CREATION_TIMESTAMP"
  add_index "T_FACILITY_ACCESS_EVENT_HISTORY", ["FACILITY_ID"], name: "T_FACILITY_ACCESS_EVENT_HISTORY_FACILITY_ID_FACILITY_NAME"
  add_index "T_FACILITY_ACCESS_EVENT_HISTORY", ["HARDWARE_DEVICE_ID"], name: "T_FACILITY_ACCESS_EVENT_HISTORY_HARDWARE_DEVICE_ID"
  add_index "T_FACILITY_ACCESS_EVENT_HISTORY", ["MULTI_VISIT_PASS_INSTANCE_ID"], name: "T_FACILITY_ACCESS_EVENT_HISTORY_MULTI_VISIT_PASS_INSTANCE_ID"
  add_index "T_FACILITY_ACCESS_EVENT_HISTORY", ["PERSON_ID", "ACCESS_GRANTED", "CREATION_TIMESTAMP"], name: "IX_T_FACILITY_ACCESS_EVENT_HISTORY_PERSON_ID_ACCESS_GRANTED_CREATION_TIMESTAMP"
  add_index "T_FACILITY_ACCESS_EVENT_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_ACCESS_EVENT_HISTORY"

  create_table "T_FACILITY_ACCESS_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                   null: false
    t.boolean "SPECIFY_GROUP_MEMBER", default: false, null: false
    t.boolean "ALLOW_GROUP_ACCESS",   default: false, null: false
  end

  add_index "T_FACILITY_ACCESS_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_ACCESS_GROUP"

  create_table "T_FACILITY_ACCESS_IMPORT_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                         null: false
    t.datetime "IMPORT_TIMESTAMP",           null: false
    t.integer  "TOTAL_RECORDS",    limit: 4
    t.integer  "SUCCEEDED_COUNT",  limit: 4
    t.integer  "FAILED_COUNT",     limit: 4
    t.integer  "DURATION_SECONDS", limit: 4
  end

  add_index "T_FACILITY_ACCESS_IMPORT_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_ACCESS_IMPORT_LOG"

  create_table "T_FACILITY_ACCESS_IMPORT_STAGING", primary_key: "ROW_ID", force: :cascade do |t|
    t.datetime "EVENT_TIMESTAMP",                       null: false
    t.string   "HARDWARE_DEVICE_ID_NUMBER", limit: 100, null: false
    t.boolean  "ACCESS_GRANTED",                        null: false
    t.string   "PERSON_ID_NUMBER",          limit: 50,  null: false
    t.string   "FIRST_NAME",                limit: 50
    t.string   "LAST_NAME",                 limit: 50
    t.string   "DESCRIPTION",               limit: 200
    t.uuid     "ERROR_CV"
    t.uuid     "IMPORT_LOG_ID"
  end

  create_table "T_FACILITY_ACTIVITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "ACTIVITY_TYPE_CV",                      null: false
    t.uuid     "FACILITY_ID",                           null: false
  end

  add_index "T_FACILITY_ACTIVITY", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_ACTIVITY"

  create_table "T_FACILITY_CONTACT_MECHANISM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "FACILITY_ID",                           null: false
    t.uuid     "CONTACT_MECHANISM_ID",                  null: false
  end

  add_index "T_FACILITY_CONTACT_MECHANISM", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_CONTACT_MECHANISM"

  create_table "T_FACILITY_CONTACT_RELATIONSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                           null: false
    t.uuid    "ORGANIZATION_CONTACT_TYPE_CV",                 null: false
    t.boolean "IS_EMERGENCY",                 default: false, null: false
  end

  add_index "T_FACILITY_CONTACT_RELATIONSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_CONTACT_RELATIONSHIP"

  create_table "T_FACILITY_OPERATING_HOURS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "FACILITY_ID",                           null: false
    t.uuid     "OPERATING_HOURS_ID",                    null: false
  end

  add_index "T_FACILITY_OPERATING_HOURS", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_OPERATING_HOURS"

  create_table "T_FACILITY_RENTAL_AGREEMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",                      null: false
    t.uuid "SOLD_AT_ORGANIZATION_ID"
    t.uuid "PRICE_ID"
  end

  add_index "T_FACILITY_RENTAL_AGREEMENT", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_RENTAL_AGREEMENT"

  create_table "T_FACILITY_RENTAL_PRODUCT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                       null: false
    t.boolean "ALLOW_PRORATE_PRICE",      default: false, null: false
    t.boolean "IS_MULTI_FACILITY_RENTAL", default: false, null: false
  end

  add_index "T_FACILITY_RENTAL_PRODUCT", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_RENTAL_PRODUCT"

  create_table "T_FACILITY_RENTAL_PRODUCT_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                         null: false
    t.uuid     "CREATION_USER_ID",                           null: false
    t.datetime "CREATION_TIMESTAMP",                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                      null: false
    t.boolean  "IS_DELETED",                 default: false, null: false
    t.uuid     "FACILITY_ID",                                null: false
    t.uuid     "FACILITY_RENTAL_PRODUCT_ID",                 null: false
  end

  add_index "T_FACILITY_RENTAL_PRODUCT_FACILITY", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_RENTAL_PRODUCT_FACILITY"

  create_table "T_FACILITY_RESERVATION_PROFILE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                   null: false
    t.datetime "UNTIL_DATE"
    t.string   "NAME",                  limit: 50,                 null: false
  end

  add_index "T_FACILITY_RESERVATION_PROFILE", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_RESERVATION_PROFILE"

  create_table "T_FACILITY_RESERVATION_PROFILE_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "FACILITY_ID",                                     null: false
    t.uuid     "FACILITY_RESERVATION_PROFILE_ID",                 null: false
  end

  add_index "T_FACILITY_RESERVATION_PROFILE_FACILITY", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_RESERVATION_PROFILE_FACILITY"

  create_table "T_FACILITY_RESERVATION_REQUEST", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                               null: false
    t.uuid     "CREATION_USER_ID",                                                 null: false
    t.datetime "CREATION_TIMESTAMP",                                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                            null: false
    t.boolean  "IS_DELETED",                                       default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                                   null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "FACILITY_ID"
    t.uuid     "PARTY_ID"
    t.string   "FIRST_NAME",                          limit: 50
    t.string   "LAST_NAME",                           limit: 50
    t.string   "EMAIL",                               limit: 100
    t.string   "PHONE",                               limit: 50
    t.datetime "START_DATE"
    t.datetime "END_DATE"
    t.string   "COMMENTS",                            limit: 3000
    t.uuid     "ACTIVITY_TYPE_CV"
    t.uuid     "FACILITY_TYPE_CV"
    t.integer  "NUMBER_OF_PEOPLE",                    limit: 4
    t.string   "GROUP_NAME",                          limit: 150
    t.string   "FACILITY_RESERVATION_REQUEST_NUMBER", limit: 100
  end

  add_index "T_FACILITY_RESERVATION_REQUEST", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_RESERVATION_REQUEST"

  create_table "T_FACILITY_RESERVATION_REQUEST_APPOINTMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                  null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "APPOINTMENT_ID",                                  null: false
    t.uuid     "FACILITY_RESERVATION_REQUEST_ID",                 null: false
  end

  add_index "T_FACILITY_RESERVATION_REQUEST_APPOINTMENT", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_RESERVATION_REQUEST_APPOINTMENT"

  create_table "T_FACILITY_RESERVATION_REQUEST_STATUS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                 null: false
    t.uuid     "CREATION_USER_ID",                                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                              null: false
    t.boolean  "IS_DELETED",                                         default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                                     null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "FACILITY_RESERVATION_REQUEST_ID",                                    null: false
    t.uuid     "STATUS_TYPE_CV"
    t.text     "INTERNAL_COMMENTS",               limit: 2147483647
    t.text     "EXTERNAL_COMMENTS",               limit: 2147483647
  end

  add_index "T_FACILITY_RESERVATION_REQUEST_STATUS", ["ROW_ID"], name: "IX_ROW_ID_T_FACILITY_RESERVATION_REQUEST_STATUS"

  create_table "T_FAMILY_RELATIONSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",                          null: false
    t.uuid "FAMILY_RELATIONSHIP_TYPE_CV", null: false
  end

  add_index "T_FAMILY_RELATIONSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_FAMILY_RELATIONSHIP"

  create_table "T_FEE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                         null: false
    t.uuid     "CREATION_USER_ID",                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                      null: false
    t.boolean  "IS_DELETED",                                 default: false, null: false
    t.varchar  "NAME",                           limit: 50,                  null: false
    t.varchar  "DESCRIPTION",                    limit: 150
    t.uuid     "PRODUCT_TYPE_CV"
    t.uuid     "REVENUE_TYPE_CV",                                            null: false
    t.uuid     "PRICE_COMPONENT_CHARGE_TYPE_CV"
    t.uuid     "TIME_FREQUENCY_MEASURE_TYPE_CV"
    t.boolean  "IS_APPLICABLE_NEW"
    t.boolean  "IS_APPLICABLE_RENEWAL"
  end

  add_index "T_FEE", ["ROW_ID"], name: "IX_ROW_ID_T_FEE"

  create_table "T_FORM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                       null: false
    t.uuid     "CREATION_USER_ID",                                                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                    null: false
    t.boolean  "IS_DELETED",                              default: false,                                  null: false
    t.datetime "EFFECTIVE_DATE",                                                                           null: false
    t.datetime "UNTIL_DATE"
    t.string   "NAME",                         limit: 50,                                                  null: false
    t.integer  "MINIMUM_PASSING_GRADE_POINTS", limit: 4
    t.uuid     "TYPE_CV",                                 default: "00000000-0000-0000-0000-000000004002", null: false
  end

  add_index "T_FORM", ["ROW_ID"], name: "IX_ROW_ID_T_FORM"

  create_table "T_FORM_ANSWER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "ANSWER",                limit: 500,                 null: false
  end

  add_index "T_FORM_ANSWER", ["ROW_ID"], name: "IX_ROW_ID_FORM_ANSWER"

  create_table "T_FORM_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "FORM_ID",                                         null: false
    t.integer  "ORDINAL_POSITION",      limit: 4,                 null: false
    t.uuid     "FORM_ITEM_TYPE_CODE",                             null: false
  end

  add_index "T_FORM_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_FORM_ITEM"

  create_table "T_FORM_ITEM_QUESTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "QUESTION_ID",                                     null: false
    t.integer  "POINT_VALUE",           limit: 4, default: 1,     null: false
    t.boolean  "IS_REQUIRED_TO_PASS",             default: false, null: false
    t.uuid     "CORRECT_ANSWER_ID"
  end

  add_index "T_FORM_ITEM_QUESTION", ["ROW_ID"], name: "IX_ROW_ID_FORM_ITEM_QUESTION"

  create_table "T_FORM_QUESTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "TEXT",                  limit: 500,                 null: false
  end

  add_index "T_FORM_QUESTION", ["ROW_ID"], name: "IX_ROW_ID_FORM_QUESTION"

  create_table "T_FORM_QUESTION_ANSWER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "QUESTION_ID",                                     null: false
    t.uuid     "ANSWER_ID",                                       null: false
    t.integer  "ORDINAL_POSITION",      limit: 4, default: 0,     null: false
  end

  add_index "T_FORM_QUESTION_ANSWER", ["ROW_ID"], name: "IX_ROW_ID_FORM_QUESTION_ANSWER"

  create_table "T_FORM_QUIZ", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                     null: false
    t.uuid     "CREATION_USER_ID",                                       null: false
    t.datetime "CREATION_TIMESTAMP",                                     null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                    null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                  null: false
    t.boolean  "IS_DELETED",                             default: false, null: false
    t.integer  "MINIMUM_PASSING_GRADE_POINTS", limit: 4, default: 0,     null: false
  end

  add_index "T_FORM_QUIZ", ["ROW_ID"], name: "IX_ROW_ID_FORM_QUIZ"

  create_table "T_FORM_RESULT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "FORM_ID",                               null: false
    t.uuid     "PARTY_ID",                              null: false
    t.boolean  "IS_PASS",               default: false, null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_FORM_RESULT", ["ROW_ID"], name: "IX_ROW_ID_FORM_RESULT"

  create_table "T_FORM_RESULT_QUESTION_ANSWER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "FORM_RESULT_ID",                        null: false
    t.uuid     "FORM_ITEM_QUESTION_ID",                 null: false
    t.uuid     "ANSWER_ID",                             null: false
  end

  add_index "T_FORM_RESULT_QUESTION_ANSWER", ["ROW_ID"], name: "IX_ROW_ID_FORM_RESULT_QUESTION_ANSWER"

  create_table "T_GENERAL_LEDGER_ACCOUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "NAME",                  limit: 50,                  null: false
    t.varchar  "DESCRIPTION",           limit: 100
    t.varchar  "NUMBER",                limit: 100,                 null: false
    t.uuid     "TYPE_CV"
  end

  add_index "T_GENERAL_LEDGER_ACCOUNT", ["ROW_ID"], name: "IX_ROW_ID_T_GENERAL_LEDGER_ACCOUNT"

  create_table "T_GEOGRAPHIC_LOCATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                      null: false
    t.uuid     "CREATION_USER_ID",                                        null: false
    t.datetime "CREATION_TIMESTAMP",                                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                   null: false
    t.boolean  "IS_DELETED",                              default: false, null: false
    t.uuid     "GEOGRAPHIC_LOCATION_TYPE_CV"
    t.varchar  "NAME",                        limit: 100
    t.uuid     "PARENT_GEO_LOC_ID"
    t.nchar    "ABBREVIATION",                limit: 2
  end

  add_index "T_GEOGRAPHIC_LOCATION", ["ROW_ID"], name: "IX_ROW_ID_T_GEOGRAPHIC_LOCATION"

  create_table "T_GLOBAL_SEARCH", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.text     "TEXT",                  limit: 2147483647
    t.uuid     "ENTITY_TYPE_CV"
    t.uuid     "ENTITY_ID"
    t.varchar  "CREATION_USERNAME",     limit: 100
    t.text     "DISPLAY_TEXT",          limit: 2147483647
  end

  add_index "T_GLOBAL_SEARCH", ["ROW_ID"], name: "IX_ROW_ID_T_GLOBAL_SEARCH"

  create_table "T_GOLF_CART", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",      null: false
    t.uuid "TYPE_CV", null: false
  end

  add_index "T_GOLF_CART", ["ROW_ID"], name: "IX_ROW_ID_T_GOLF_CART"

  create_table "T_GOLF_CLOSURE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.string   "NAME",                  limit: 50,                 null: false
    t.integer  "BACKGROUND_COLOR",      limit: 4
    t.integer  "FONT_COLOR",            limit: 4
  end

  add_index "T_GOLF_CLOSURE", ["ROW_ID"], name: "IX_ROW_ID_T_GOLF_CLOSURE"

  create_table "T_GOLF_CLUB_SET", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                         null: false
    t.boolean "IS_PACKAGE", default: false, null: false
  end

  add_index "T_GOLF_CLUB_SET", ["ROW_ID"], name: "IX_ROW_ID_T_GOLF_CLUB_SET"

  create_table "T_GOLF_COURSE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                     null: false
    t.integer "TEE_TIME_INTERVAL_MINUTES",    limit: 4, null: false
    t.integer "AVG_TIME_TO_COMPLETE_HOURS",   limit: 4
    t.integer "AVG_TIME_TO_COMPLETE_MINUTES", limit: 4
  end

  add_index "T_GOLF_COURSE", ["ROW_ID"], name: "IX_ROW_ID_T_GOLF_COURSE"

  create_table "T_GOLF_RESERVATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                  null: false
    t.uuid     "CREATION_USER_ID",                                    null: false
    t.datetime "CREATION_TIMESTAMP",                                  null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                 null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                               null: false
    t.boolean  "IS_DELETED",                          default: false, null: false
    t.uuid     "GOLF_COURSE_ID",                                      null: false
    t.boolean  "IS_RESERVATION_PENDING",              default: false, null: false
    t.varchar  "RESERVATION_NUMBER",      limit: 100
    t.datetime "START_DATETIME",                                      null: false
    t.varchar  "DESCRIPTION",             limit: 300
    t.uuid     "GOLF_CLOSURE_ID"
    t.string   "UNAVAILABILITY_COMMENTS", limit: 300
    t.uuid     "NUMBER_OF_HOLES_CV"
  end

  add_index "T_GOLF_RESERVATION", ["ROW_ID"], name: "IX_ROW_ID_T_GOLF_RESERVATION"

  create_table "T_GOLF_RESERVATION_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "GOLF_RESERVATION_ID",                               null: false
    t.uuid     "PLAYER_PARTY_ID"
    t.integer  "PLAYER_NUMBER",         limit: 4,                   null: false
    t.varchar  "PLAYER_NAME",           limit: 100
    t.uuid     "CART_PRODUCT_ID"
    t.uuid     "CLUB_SET_PRODUCT_ID"
  end

  add_index "T_GOLF_RESERVATION_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_GOLF_RESERVATION_ITEM"

  create_table "T_GOLF_RESERVATION_ITEM_INVOICE_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",                       null: false
    t.uuid "GOLF_RESERVATION_ITEM_ID", null: false
  end

  add_index "T_GOLF_RESERVATION_ITEM_INVOICE_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_GOLF_RESERVATION_ITEM_INVOICE_ITEM"

  create_table "T_GOLF_SEASON", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                    null: false
    t.datetime "UNTIL_DATE",                                        null: false
    t.datetime "FIRST_TEE_TIME",                                    null: false
    t.datetime "LAST_TEE_TIME",                                     null: false
    t.varchar  "NAME",                  limit: 100,                 null: false
  end

  add_index "T_GOLF_SEASON", ["ROW_ID"], name: "IX_ROW_ID_T_GOLF_SEASON"

  create_table "T_GREEN_FEE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",                 null: false
    t.uuid "FACILITY_ID"
    t.uuid "NUMBER_OF_HOLES_CV"
  end

  add_index "T_GREEN_FEE", ["ROW_ID"], name: "IX_ROW_ID_T_GREEN_FEE"

  create_table "T_GROUP_PRICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_GROUP_PRICE", ["ROW_ID"], name: "IX_ROW_ID_T_GROUP_PRICE"

  create_table "T_GUEST_PASS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                     null: false
    t.uuid    "ACCESS_PROFILE_ID"
    t.boolean "IS_MEMBERSHIP_REQUIRED", default: false
  end

  add_index "T_GUEST_PASS", ["ROW_ID"], name: "IX_ROW_ID_T_GUEST_PASS"

  create_table "T_GUEST_PASS_INSTANCE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.string   "ID_NUMBER",             limit: 50,                 null: false
    t.uuid     "GUEST_PASS_ID",                                    null: false
    t.uuid     "ORDER_ITEM_ID",                                    null: false
    t.uuid     "CUSTOMER_PARTY_ID"
    t.datetime "REDEMPTION_DATE"
    t.boolean  "IS_CANCELLED",                     default: false, null: false
    t.datetime "EFFECTIVE_DATE"
    t.datetime "UNTIL_DATE"
  end

  add_index "T_GUEST_PASS_INSTANCE", ["ROW_ID"], name: "IX_ROW_ID_T_GUEST_PASS_INSTANCE"

  create_table "T_GUEST_PASS_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.boolean  "PRINT_CUSTOMER_NAME",   default: false, null: false
    t.boolean  "PRINT_USERNAME",        default: false, null: false
  end

  add_index "T_GUEST_PASS_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_GUEST_PASS_SETTINGS"

  create_table "T_HARDWARE_CONTROL_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                      null: false
    t.uuid     "CREATION_USER_ID",                        null: false
    t.datetime "CREATION_TIMESTAMP",                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                   null: false
    t.boolean  "IS_DELETED",              default: false, null: false
    t.uuid     "HARDWARE_DEVICE_ID"
    t.uuid     "SOURCE_TYPE_CV"
    t.uuid     "HARDWARE_DEVICE_TYPE_CV"
    t.uuid     "ACTION_TYPE_CV"
  end

  add_index "T_HARDWARE_CONTROL_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_HARDWARE_CONTROL_LOG"

  create_table "T_HARDWARE_DEVICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                  null: false
    t.uuid     "CREATION_USER_ID",                                                    null: false
    t.datetime "CREATION_TIMESTAMP",                                                  null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                 null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                               null: false
    t.boolean  "IS_DELETED",                                          default: false, null: false
    t.uuid     "COMPUTER_ID",                                                         null: false
    t.uuid     "PARENT_DEVICE_ID"
    t.string   "NAME",                                    limit: 50
    t.boolean  "IS_ACTIVE",                                           default: false, null: false
    t.uuid     "HARDWARE_DEVICE_TYPE_CV",                                             null: false
    t.uuid     "READER_DEVICE_TYPE_CV"
    t.uuid     "READER_DEVICE_USAGE_TYPE_CV"
    t.uuid     "CONNECTION_TYPE_CV",                                                  null: false
    t.varchar  "COM_PORT",                                limit: 10
    t.uuid     "BAUD_RATE_TYPE_CV"
    t.uuid     "PARITY_TYPE_CV"
    t.uuid     "DATA_BITS_TYPE_CV"
    t.uuid     "STOP_BITS_TYPE_CV"
    t.uuid     "HANDSHAKING_TYPE_CV"
    t.boolean  "IS_DTR_ENABLED"
    t.boolean  "IS_RTS_ENABLED"
    t.integer  "COM_READ_DELAY_MILLISECONDS",             limit: 4
    t.string   "HARDWARE_PATH",                           limit: 500
    t.string   "HARDWARE_ID",                             limit: 100
    t.varchar  "SERVICE_OBJECT_NAME",                     limit: 100
    t.varchar  "PREFIX",                                  limit: 50
    t.varchar  "SUFFIX",                                  limit: 50
    t.varchar  "INITIALIZATION",                          limit: 50
    t.varchar  "ENTRY_DEVICE_OPEN_COMMAND",               limit: 50
    t.varchar  "ENTRY_DEVICE_CLOSE_COMMAND",              limit: 50
    t.varchar  "ENTRY_DEVICE_STATUS_COMMAND",             limit: 50
    t.integer  "ENTRY_DEVICE_TIME_INTERVAL_MILLISECONDS", limit: 4
    t.varchar  "IP_ADDRESS",                              limit: 15
    t.string   "BLACKBOARD_TERMINAL_NUMBER",              limit: 8
    t.string   "BLACKBOARD_TENDER_NUMBER",                limit: 4
    t.string   "BLACKBOARD_ENCRYPTION_KEY",               limit: 50
    t.string   "ONECARD_READER_NAME",                     limit: 300
    t.integer  "GATE_NUMBER",                             limit: 4
    t.string   "DEVICE_NUMBER",                           limit: 100
    t.boolean  "IS_EXIT_DEVICE",                                      default: false, null: false
  end

  add_index "T_HARDWARE_DEVICE", ["ROW_ID"], name: "IX_ROW_ID_T_HARDWARE_DEVICE"

  create_table "T_ID_CARD", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                           null: false
    t.uuid     "CREATION_USER_ID",                                             null: false
    t.datetime "CREATION_TIMESTAMP",                                           null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                          null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                        null: false
    t.boolean  "IS_DELETED",                                   default: false, null: false
    t.varchar  "NAME",                            limit: 100,                  null: false
    t.varchar  "DESCRIPTION",                     limit: 300
    t.uuid     "PAPER_SIZE_ID"
    t.boolean  "IS_DOUBLE_SIDED",                                              null: false
    t.varchar  "BACKGROUND_IMAGE_FRONT_FILENAME", limit: 100
    t.string   "BACKGROUND_IMAGE_FRONT_DATA",     limit: 4000
    t.varchar  "BACKGROUND_IMAGE_BACK_FILENAME",  limit: 100
    t.string   "BACKGROUND_IMAGE_BACK_DATA",      limit: 4000
    t.integer  "PRIORITY_POSITION",               limit: 4,    default: 0,     null: false
  end

  add_index "T_ID_CARD", ["ROW_ID"], name: "IX_ROW_ID_T_ID_CARD"

  create_table "T_ID_CARD_ENCODING_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "ID_CARD_ID",                            null: false
    t.uuid     "ENCODING_TYPE_CV",                      null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_ID_CARD_ENCODING_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_ID_CARD_ENCODING_TYPE"

  create_table "T_ID_CARD_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.integer  "ITEM_TYPE",             limit: 4,                    null: false
    t.varchar  "TEXT",                  limit: 1000
    t.integer  "TOP",                   limit: 4,                    null: false
    t.integer  "LEFT",                  limit: 4,                    null: false
    t.integer  "HEIGHT",                limit: 4,                    null: false
    t.integer  "WIDTH",                 limit: 4,                    null: false
    t.varchar  "FONT_NAME",             limit: 50,                   null: false
    t.float    "FONT_SIZE",                                          null: false
    t.integer  "FONT_STYLE",            limit: 4,                    null: false
    t.integer  "FONT_COLOR",            limit: 4,                    null: false
    t.uuid     "ID_CARD_ID",                                         null: false
    t.integer  "PAGE",                  limit: 4,                    null: false
  end

  add_index "T_ID_CARD_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_ID_CARD_ITEM"

  create_table "T_ID_NUMBER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP"
    t.uuid     "TYPE_CV",                          null: false
    t.string   "PREFIX",                limit: 10
    t.bigint   "LAST_ID_NUMBER",        limit: 8
    t.bigint   "NEXT_ID_NUMBER",        limit: 8
  end

  add_index "T_ID_NUMBER", ["ROW_ID"], name: "IX_ROW_ID_T_ID_NUMBER"

  create_table "T_IMAGE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "RELATED_ENTITY_ID",                                        null: false
    t.binary   "DATA",                  limit: 2147483647,                 null: false
    t.string   "CONTENT_TYPE",          limit: 100
    t.binary   "THUMBNAIL_SMALL",       limit: 2147483647
    t.binary   "THUMBNAIL_MEDIUM",      limit: 2147483647
  end

  add_index "T_IMAGE", ["IS_DELETED", "RELATED_ENTITY_ID"], name: "IX_T_IMAGE_IS_DELETED_RELATED_ENTITY_ID"
  add_index "T_IMAGE", ["IS_DELETED"], name: "T_IMAGE_IS_DELETED"
  add_index "T_IMAGE", ["ROW_ID"], name: "IX_ROW_ID_T_IMAGE"

  create_table "T_IMPORT_FORMAT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                  null: false
    t.uuid     "CREATION_USER_ID",                                                    null: false
    t.datetime "CREATION_TIMESTAMP",                                                  null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                 null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                               null: false
    t.boolean  "IS_DELETED",                                          default: false, null: false
    t.string   "NAME",                                    limit: 50,                  null: false
    t.string   "DESCRIPTION",                             limit: 512
    t.uuid     "TYPE_CV"
    t.boolean  "SET_NEW_TO_INACTIVE"
    t.boolean  "MEMBERSHIP_CLEANUP_ENABLED",                          default: false, null: false
    t.uuid     "CLEANUP_MEMBERSHIP_TYPE_ID"
    t.boolean  "CLEANUP_ASSOCIATED_ELIGIBLE_MEMBERSHIPS",             default: false, null: false
    t.boolean  "RESTORE_ASSOCIATED_ELIGIBLE_MEMBERSHIPS",             default: false, null: false
    t.uuid     "MEMBERSHIP_ASSIGNMENT_TYPE_CV"
    t.uuid     "ASSIGNMENT_MEMBERSHIP_TYPE_ID"
    t.datetime "ASSIGNMENT_MEMBERSHIP_START_DATE"
    t.datetime "ASSIGNMENT_MEMBERSHIP_END_DATE"
    t.uuid     "FILE_FORMAT_TYPE_CV"
    t.string   "FILE_DIRECTORY_LOCATION",                 limit: 300,                 null: false
    t.string   "FILE_NAME",                               limit: 100,                 null: false
    t.boolean  "DELETE_FILE_AFTER_IMPORT",                            default: false, null: false
    t.uuid     "FACILITY_ACCESS_GROUP_ID"
    t.datetime "FACILITY_ACCESS_START_DATE"
    t.datetime "FACILITY_ACCESS_END_DATE"
    t.boolean  "IGNORE_FILE_HEADER_ROW",                              default: false, null: false
    t.boolean  "ID_CONTAINS_VERSION",                                 default: false, null: false
    t.integer  "ID_NUMBER_START",                         limit: 4
    t.integer  "ID_NUMBER_LENGTH",                        limit: 4
    t.integer  "VERSION_NUMBER_START",                    limit: 4
    t.integer  "VERSION_NUMBER_LENGTH",                   limit: 4
    t.boolean  "DYNAMIC_ID_CONTAINS_VERSION",                         default: false, null: false
    t.integer  "DYNAMIC_ID_NUMBER_START",                 limit: 4
    t.integer  "DYNAMIC_ID_NUMBER_LENGTH",                limit: 4
    t.integer  "DYNAMIC_ID_VERSION_START",                limit: 4
    t.integer  "DYNAMIC_ID_VERSION_LENGTH",               limit: 4
    t.boolean  "DYNAMIC_ID_2_CONTAINS_VERSION",                       default: false, null: false
    t.integer  "DYNAMIC_ID_2_NUMBER_START",               limit: 4
    t.integer  "DYNAMIC_ID_2_NUMBER_LENGTH",              limit: 4
    t.integer  "DYNAMIC_ID_2_VERSION_START",              limit: 4
    t.integer  "DYNAMIC_ID_2_VERSION_LENGTH",             limit: 4
    t.nchar    "FIELD_DELIMITER",                         limit: 1
    t.boolean  "IS_DEBUG_MODE_ENABLED",                               default: false, null: false
    t.boolean  "ARE_EMPTY_FILES_PROCESSED",                           default: true,  null: false
    t.string   "DELTA_IMPORT_DELETION_FLAG",              limit: 50
  end

  add_index "T_IMPORT_FORMAT", ["ROW_ID"], name: "IX_ROW_ID_T_IMPORT_FORMAT"

  create_table "T_IMPORT_FORMAT_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                     null: false
    t.uuid     "CREATION_USER_ID",                                       null: false
    t.datetime "CREATION_TIMESTAMP",                                     null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                    null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                  null: false
    t.boolean  "IS_DELETED",                             default: false, null: false
    t.uuid     "IMPORT_FORMAT_ID",                                       null: false
    t.string   "DESCRIPTION",                limit: 512
    t.uuid     "TYPE_CV",                                                null: false
    t.integer  "SIZE",                       limit: 4
    t.integer  "POSITION",                   limit: 4
    t.uuid     "EXTERNAL_ID_TYPE_CV"
    t.uuid     "CUSTOM_FIELD_ID"
    t.integer  "EXTERNAL_ID_PADDING_LENGTH", limit: 4
    t.uuid     "EXTERNAL_ID_TYPE_ID"
  end

  add_index "T_IMPORT_FORMAT_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_IMPORT_FORMAT_ITEM"

  create_table "T_IMPORT_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                        null: false
    t.uuid     "CREATION_USER_ID",                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                     null: false
    t.boolean  "IS_DELETED",                                default: false, null: false
    t.uuid     "IMPORT_FORMAT_ID",                                          null: false
    t.string   "FILE_NAME",                     limit: 100
    t.uuid     "IMPORT_TASK_ID"
    t.uuid     "TASK_LOG_ID"
    t.boolean  "IS_DELTA_FILE",                             default: false, null: false
    t.integer  "DURATION_SECONDS",              limit: 4
    t.integer  "TOTAL_RECORDS",                 limit: 4
    t.integer  "INVALID_RECORDS",               limit: 4
    t.integer  "DUPLICATE_RECORDS",             limit: 4
    t.integer  "PEOPLE_ADDED",                  limit: 4
    t.integer  "PEOPLE_UPDATED",                limit: 4
    t.integer  "DELTA_MEMBERSHIPS_DELETED",     limit: 4
    t.integer  "MEMBERSHIPS_DELETED",           limit: 4
    t.integer  "MEMBERSHIPS_ADDED",             limit: 4
    t.integer  "MEMBERSHIPS_VALID",             limit: 4
    t.uuid     "NEW_MEMBERSHIP_TYPE_ID"
    t.uuid     "CLEANUP_MEMBERSHIP_TYPE_ID"
    t.integer  "GROUP_MEMBERS_ADDED",           limit: 4
    t.integer  "GROUP_MEMBERS_UPDATED",         limit: 4
    t.integer  "ELIGIBLE_STATUS_DELETED",       limit: 4
    t.integer  "ELIGIBLE_STATUS_ADDED",         limit: 4
    t.integer  "ELIGIBLE_STATUS_VALID",         limit: 4
    t.integer  "ELIGIBLE_MEMBERSHIPS_DELETED",  limit: 4
    t.integer  "ELIGIBLE_MEMBERSHIPS_RESTORED", limit: 4
    t.integer  "LDAP_ACCOUNTS_ADDED",           limit: 4
    t.integer  "LDAP_ACCOUNTS_VALID",           limit: 4
    t.integer  "LDAP_ACCOUNTS_OMITTED",         limit: 4
  end

  add_index "T_IMPORT_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_IMPORT_LOG"

  create_table "T_IMPORT_MEMBER_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "PARTY_ID", null: false
  end

  add_index "T_IMPORT_MEMBER_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_IMPORT_MEMBER_LOG"

  create_table "T_IMPORT_STAGING", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                null: false
    t.boolean  "IS_DUPLICATE",                                      default: false, null: false
    t.uuid     "TASK_LOG_ID"
    t.string   "DELTA_ACTION_FLAG",              limit: 50
    t.string   "FULL_NAME",                      limit: 100
    t.string   "FIRST_NAME",                     limit: 50
    t.string   "MIDDLE_NAME",                    limit: 50
    t.string   "LAST_NAME",                      limit: 50
    t.string   "GENDER",                         limit: 50
    t.string   "EMAIL_ADDRESS",                  limit: 100
    t.string   "BIRTH_DATE",                     limit: 50
    t.string   "ACADEMIC_YEAR",                  limit: 50
    t.string   "ACADEMIC_PROGRAM",               limit: 1000
    t.string   "INTERNAL_ID_NUMBER",             limit: 100
    t.string   "STATIC_ID_NUMBER",               limit: 50
    t.string   "STATIC_ID_PARSED",               limit: 50
    t.string   "STATIC_ID_VERSION",              limit: 50
    t.string   "DYNAMIC_ID_NUMBER",              limit: 50
    t.string   "DYNAMIC_ID_PARSED",              limit: 50
    t.string   "DYNAMIC_ID_VERSION",             limit: 50
    t.string   "DYNAMIC_ID_2_NUMBER",            limit: 50
    t.string   "DYNAMIC_ID_2_PARSED",            limit: 50
    t.string   "DYNAMIC_ID_2_VERSION",           limit: 50
    t.string   "PHONE_NUMBER",                   limit: 50
    t.string   "ADDRESS_LINE_1",                 limit: 100
    t.string   "ADDRESS_LINE_2",                 limit: 100
    t.string   "CITY",                           limit: 50
    t.string   "PROVINCE_STATE",                 limit: 50
    t.string   "POSTAL_CODE",                    limit: 50
    t.string   "MEMBERSHIP_START_DATE",          limit: 50
    t.string   "MEMBERSHIP_END_DATE",            limit: 50
    t.string   "MEMBERSHIP_ELIGIBILITY_CODE",    limit: 50
    t.string   "BIOMETRIC_HAND_TEMPLATE",        limit: 50
    t.string   "LDAP_USERNAME",                  limit: 50
    t.string   "PICTURE_FILENAME",               limit: 100
    t.binary   "THUMBNAIL_DATA",                 limit: 2147483647
    t.uuid     "PERSON_ID"
    t.boolean  "IS_NEW_PERSON",                                     default: false
    t.integer  "ID_INCREMENT",                   limit: 4
    t.uuid     "PERSON_PARTY_ROLE_ID"
    t.uuid     "MEMBER_PARTY_ROLE_ID"
    t.uuid     "PARTY_EXTERNAL_ID_STATIC"
    t.uuid     "PARTY_EXTERNAL_ID_DYNAMIC"
    t.uuid     "PARTY_EXTERNAL_ID_DYNAMIC_2"
    t.uuid     "EMAIL_ADDRESS_ID"
    t.boolean  "IS_NEW_EMAIL",                                      default: false
    t.uuid     "ADDRESS_ID"
    t.boolean  "IS_NEW_ADDRESS",                                    default: false
    t.uuid     "PHONE_ID"
    t.boolean  "IS_NEW_PHONE",                                      default: false
    t.uuid     "MEMBERSHIP_ELIGIBILITY_TYPE_ID"
    t.boolean  "IS_VALID_ELIGIBILITY",                              default: false
    t.datetime "ACTUAL_MEMBERSHIP_START"
    t.datetime "ACTUAL_MEMBERSHIP_END"
    t.uuid     "MEMBERSHIP_AGREEMENT_ID"
    t.boolean  "IS_NEW_MEMBERSHIP_AGREEMENT",                       default: false
    t.integer  "AGREEMENT_ID_INCREMENT",         limit: 4
    t.boolean  "HAS_USER_ACCOUNT_ALREADY",                          default: false
    t.boolean  "IS_USERNAME_AVAILABLE",                             default: false
    t.text     "CUSTOM_FIELD_1",                 limit: 2147483647
    t.text     "CUSTOM_FIELD_2",                 limit: 2147483647
    t.text     "CUSTOM_FIELD_3",                 limit: 2147483647
    t.text     "CUSTOM_FIELD_4",                 limit: 2147483647
    t.text     "CUSTOM_FIELD_5",                 limit: 2147483647
    t.string   "BANK_ROUTING_TRANSIT_NUMBER",    limit: 50
    t.string   "BANK_INSTITUTION_NUMBER",        limit: 50
    t.text     "BANK_ACCOUNT_NUMBER",            limit: 2147483647
    t.boolean  "IS_NEW_BANK_ACCOUNT"
    t.uuid     "BANK_ACCOUNT_ID"
  end

  add_index "T_IMPORT_STAGING", ["ROW_ID"], name: "IX_ROW_ID_T_IMPORT_STAGING"
  add_index "T_IMPORT_STAGING", ["TASK_LOG_ID"], name: "T_IMPORT_STAGING_TASK_LOG_ID"

  create_table "T_IMPORT_TASK", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",               null: false
    t.uuid "IMPORT_FORMAT_ID", null: false
  end

  add_index "T_IMPORT_TASK", ["ROW_ID"], name: "IX_ROW_ID_T_IMPORT_TASK"

  create_table "T_IM_GAME", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "SCHEDULE_SETUP_ID"
  end

  create_table "T_IM_GAME_SLOT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "LEAGUE_DIVISION_ID",                    null: false
    t.uuid     "DAY_OF_WEEK_CV",                        null: false
    t.datetime "GAME_START_TIME",                       null: false
  end

  create_table "T_IM_GAME_TEAM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "GAME_ID",                               null: false
    t.uuid     "TEAM_ID",                               null: false
  end

  create_table "T_IM_GENERAL_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                               null: false
    t.uuid     "CREATION_USER_ID",                                                 null: false
    t.datetime "CREATION_TIMESTAMP",                                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                            null: false
    t.boolean  "IS_DELETED",                                       default: false, null: false
    t.boolean  "ALLOW_CAPTAINS_TO_MOVE_THEMSELVES_WITHIN_LEAGUES",                 null: false
    t.boolean  "IS_DEFAULT_ENABLED",                                               null: false
    t.datetime "DEFAULT_MINIMUM_TIME_BEFORE_GAME",                                 null: false
    t.uuid     "ROSTER_PLAYERS_ADDITION_DATE_LIMIT_RULE_ID"
    t.uuid     "ROSTER_PLAYERS_REMOVAL_DATE_LIMIT_RULE_ID"
  end

  add_index "T_IM_GENERAL_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_IM_GENERAL_SETTINGS"

  create_table "T_IM_LEAGUE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                                       null: false
    t.uuid     "CREATION_USER_ID",                                                                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                                                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                                    null: false
    t.boolean  "IS_DELETED",                                              default: false,                                  null: false
    t.string   "NAME",                                       limit: 50,                                                    null: false
    t.string   "DESCRIPTION",                                limit: 1000
    t.uuid     "SPORT_ID",                                                                                                 null: false
    t.boolean  "IS_WAITLISTING_ENABLED",                                  default: true,                                   null: false
    t.boolean  "IS_MEMBERSHIP_TYPE_REQUIRED",                             default: false
    t.integer  "DIVISION_SIZE",                              limit: 4,    default: 1,                                      null: false
    t.uuid     "ROSTER_PLAYERS_ADDITION_DATE_LIMIT_RULE_ID"
    t.uuid     "ROSTER_PLAYERS_REMOVAL_DATE_LIMIT_RULE_ID"
    t.uuid     "SEASON_TYPE_CV",                                          default: "00000000-0000-0000-0000-000000004018", null: false
    t.integer  "LENGTH_OF_GAME_MINUTES",                     limit: 4,    default: 1,                                      null: false
    t.integer  "TIME_BETWEEN_GAMES_MINUTES",                 limit: 4,    default: 1,                                      null: false
  end

  add_index "T_IM_LEAGUE", ["ROW_ID"], name: "IX_ROW_ID_T_LEAGUE"

  create_table "T_IM_LEAGUE_DIVISION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                      null: false
    t.uuid     "CREATION_USER_ID",                                                        null: false
    t.datetime "CREATION_TIMESTAMP",                                                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                   null: false
    t.boolean  "IS_DELETED",                                              default: false, null: false
    t.string   "NAME",                                       limit: 50,                   null: false
    t.string   "DESCRIPTION",                                limit: 1000
    t.uuid     "LEAGUE_ID",                                                               null: false
    t.boolean  "IS_WAITLISTING_ENABLED",                                  default: true,  null: false
    t.boolean  "IS_MEMBERSHIP_TYPE_REQUIRED",                             default: false
    t.integer  "DIVISION_SIZE",                              limit: 4,    default: 1,     null: false
    t.uuid     "ROSTER_PLAYERS_ADDITION_DATE_LIMIT_RULE_ID"
    t.uuid     "ROSTER_PLAYERS_REMOVAL_DATE_LIMIT_RULE_ID"
  end

  add_index "T_IM_LEAGUE_DIVISION", ["ROW_ID"], name: "IX_ROW_ID_T_LEAGUE_DIVISION"

  create_table "T_IM_LEAGUE_DIVISION_GENDER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "LEAGUE_DIVISION_ID",                    null: false
    t.uuid     "GENDER_CV",                             null: false
  end

  add_index "T_IM_LEAGUE_DIVISION_GENDER", ["ROW_ID"], name: "IX_ROW_ID_IM_LEAGUE_DIVISION_GENDER"

  create_table "T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "LEAGUE_DIVISION_ID",                    null: false
    t.uuid     "MEMBERSHIP_TYPE_ID",                    null: false
  end

  add_index "T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE", ["ROW_ID"], name: "IX_ROW_ID_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE"

  create_table "T_IM_LEAGUE_GENDER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "LEAGUE_ID",                             null: false
    t.uuid     "GENDER_CV",                             null: false
  end

  add_index "T_IM_LEAGUE_GENDER", ["ROW_ID"], name: "IX_ROW_ID_IM_LEAGUE_GENDER"

  create_table "T_IM_LEAGUE_MEMBERSHIP_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "LEAGUE_ID",                             null: false
    t.uuid     "MEMBERSHIP_TYPE_ID",                    null: false
  end

  add_index "T_IM_LEAGUE_MEMBERSHIP_TYPE", ["ROW_ID"], name: "IX_ROW_ID_IM_LEAGUE_MEMBERSHIP_TYPE"

  create_table "T_IM_LEAGUE_TEAM_COLOR", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "LEAGUE_ID",                             null: false
    t.uuid     "TEAM_COLOR_CV",                         null: false
  end

  add_index "T_IM_LEAGUE_TEAM_COLOR", ["ROW_ID"], name: "IX_ROW_ID_IM_LEAGUE_TEAM_COLOR"

  create_table "T_IM_RULE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                  null: false
    t.uuid     "CREATION_USER_ID",                                    null: false
    t.datetime "CREATION_TIMESTAMP",                                  null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                 null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                               null: false
    t.boolean  "IS_DELETED",                         default: false,  null: false
    t.string   "NAME",                  limit: 50,   default: "RULE", null: false
    t.string   "DESCRIPTION",           limit: 1000
    t.uuid     "ABSOLUTE_OPTION_CV"
    t.datetime "ABSOLUTE_DATE"
    t.integer  "NUMERIC_VALUE",         limit: 4
    t.uuid     "TIME_UNIT_CV"
    t.uuid     "TIME_FRAME_CV"
    t.uuid     "SEASON_MOMENT_CV"
  end

  add_index "T_IM_RULE", ["ROW_ID"], name: "IX_ROW_ID_IM_RULE"

  create_table "T_IM_SCHEDULE_SETUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                   null: false
    t.uuid     "CREATION_USER_ID",                                     null: false
    t.datetime "CREATION_TIMESTAMP",                                   null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                  null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                null: false
    t.boolean  "IS_DELETED",                           default: false, null: false
    t.uuid     "LEAGUE_ID",                                            null: false
    t.uuid     "SCHEDULE_SETUP_TYPE_CV",                               null: false
    t.uuid     "SCHEDULE_FORMAT_CV",                                   null: false
    t.integer  "GAMES_PER_TEAM",             limit: 4,                 null: false
    t.datetime "START_DATE",                                           null: false
    t.datetime "END_DATE",                                             null: false
    t.integer  "LENGTH_OF_GAME_MINUTES",     limit: 4, default: 1
    t.integer  "TIME_BETWEEN_GAMES_MINUTES", limit: 4, default: 1
  end

  create_table "T_IM_SCHEDULE_SETUP_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "SCHEDULE_SETUP_ID",                     null: false
    t.uuid     "FACILITY_ID",                           null: false
    t.datetime "START_TIME"
    t.datetime "END_TIME"
    t.boolean  "IS_DATE_SPECIFIED",     default: false, null: false
    t.datetime "START_DATE"
    t.datetime "END_DATE"
  end

  create_table "T_IM_SCHEDULE_SETUP_TEAM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "SCHEDULE_SETUP_ID",                     null: false
    t.uuid     "TEAM_ID",                               null: false
  end

  create_table "T_IM_SEASON", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                            null: false
    t.uuid     "CREATION_USER_ID",                                              null: false
    t.datetime "CREATION_TIMESTAMP",                                            null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                           null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                         null: false
    t.boolean  "IS_DELETED",                                    default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                                null: false
    t.datetime "UNTIL_DATE"
    t.string   "NAME",                             limit: 150,                  null: false
    t.string   "DESCRIPTION",                      limit: 1000
    t.datetime "DEFAULT_REGISTRATION_OPENS_DATE",                               null: false
    t.datetime "DEFAULT_REGISTRATION_CLOSES_DATE",                              null: false
  end

  add_index "T_IM_SEASON", ["ROW_ID"], name: "IX_ROW_ID_T_LEAGUE_SEASON"

  create_table "T_IM_SEASON_LEAGUE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                          null: false
    t.uuid     "CREATION_USER_ID",                            null: false
    t.datetime "CREATION_TIMESTAMP",                          null: false
    t.uuid     "LAST_UPDATE_USER_ID",                         null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                       null: false
    t.boolean  "IS_DELETED",                  default: false, null: false
    t.uuid     "SEASON_ID",                                   null: false
    t.uuid     "LEAGUE_ID",                                   null: false
    t.boolean  "REGISTRATION_DATES_OVERRIDE",                 null: false
    t.datetime "REGISTRATION_OPENS_DATE",                     null: false
    t.datetime "REGISTRATION_CLOSES_DATE",                    null: false
  end

  add_index "T_IM_SEASON_LEAGUE", ["ROW_ID"], name: "IX_ROW_ID_IM_SEASON_LEAGUE"

  create_table "T_IM_SPORT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                                          null: false
    t.boolean  "IS_TEAM_SPORT",                                              default: false,                                  null: false
    t.integer  "MAXIMUM_NUMBER_OF_TEAM_MEMBERS",                   limit: 4
    t.integer  "MINIMUM_NUMBER_OF_TEAM_MEMBERS",                   limit: 4
    t.boolean  "ALLOW_CAPTAINS_TO_DEFAULT_ONLINE",                           default: false,                                  null: false
    t.datetime "DEFAULT_MINIMUM_TIME_BEFORE_GAME"
    t.uuid     "PAYMENT_TIMING_CV"
    t.uuid     "PRICING_METHOD_CV",                                          default: "00000000-0000-0000-0000-000000003996", null: false
    t.boolean  "IS_CAPTAIN_REQUIRED",                                        default: false,                                  null: false
    t.boolean  "ALLOW_PLAYERS_TO_ENTER_SCORE",                               default: false,                                  null: false
    t.boolean  "ALLOW_CAPTAINS_TO_MOVE_THEMSELVES_WITHIN_LEAGUES",           default: false,                                  null: false
  end

  add_index "T_IM_SPORT", ["ROW_ID"], name: "IX_ROW_ID_T_SPORT"

  create_table "T_IM_SPORTSMANSHIP_RATING_SCALE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 100,                 null: false
    t.integer  "VALUE",                 limit: 4,                   null: false
  end

  add_index "T_IM_SPORTSMANSHIP_RATING_SCALE", ["ROW_ID"], name: "IX_ROW_ID_IM_SPORTSMANSHIP_RATING_SCALE"

  create_table "T_IM_SPORT_FORM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.uuid     "SPORT_ID",                                           null: false
    t.uuid     "FORM_ID",                                            null: false
    t.boolean  "IS_FOR_PLAYER",                      default: false, null: false
    t.boolean  "IS_FOR_CAPTAIN",                     default: false, null: false
    t.string   "VIDEO_URL",             limit: 1000
  end

  add_index "T_IM_SPORT_FORM", ["ROW_ID"], name: "IX_ROW_ID_IM_SPORT_FORM"

  create_table "T_IM_SPORT_TEAM_COLOR", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "SPORT_ID",                              null: false
    t.uuid     "TEAM_COLOR_CV",                         null: false
  end

  add_index "T_IM_SPORT_TEAM_COLOR", ["ROW_ID"], name: "IX_ROW_ID_IM_SPORT_TEAM_COLOR"

  create_table "T_IM_SPORT_WAIVER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "SPORT_ID",                              null: false
    t.uuid     "WAIVER_ID",                             null: false
    t.boolean  "IS_FOR_PLAYER",         default: false, null: false
    t.boolean  "IS_FOR_CAPTAIN",        default: false, null: false
  end

  add_index "T_IM_SPORT_WAIVER", ["ROW_ID"], name: "IX_ROW_ID_SPORT_WAIVER"

  create_table "T_IM_TEAM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 100,                 null: false
  end

  create_table "T_INDIVIDUAL_PRICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_INDIVIDUAL_PRICE", ["ROW_ID"], name: "IX_ROW_ID_T_INDIVIDUAL_PRICE"

  create_table "T_INSTRUCTOR", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_INSTRUCTOR", ["ROW_ID"], name: "IX_ROW_ID_T_INSTRUCTOR"

  create_table "T_INTEGRATION_CACHE_CHECK_EXPIRED_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                       null: false
    t.datetime "CREATION_TIMESTAMP",                       null: false
    t.integer  "PROCESSING_COUNT",   limit: 4, default: 0, null: false
  end

  add_index "T_INTEGRATION_CACHE_CHECK_EXPIRED_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_INTEGRATION_CACHE_CHECK_EXPIRED_LOG"

  create_table "T_INTEGRATION_PERSON_INFO", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                                null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                             null: false
    t.boolean  "IS_DELETED",                                        default: false, null: false
    t.uuid     "INTERNAL_PERSON_ID"
    t.string   "FIRST_NAME",                            limit: 50
    t.string   "MIDDLE_NAME",                           limit: 50
    t.string   "LAST_NAME",                             limit: 50
    t.string   "PERSON_TYPE",                           limit: 50
    t.string   "EXTERNAL_PERSON_ID",                    limit: 50
    t.boolean  "IS_ELIGIBLE_FOR_FACILITY_ACCESS",                   default: false, null: false
    t.boolean  "IS_ELIGIBLE_FOR_SELF_REGISTRATION",                 default: false, null: false
    t.boolean  "IS_FINANCIAL_ACCOUNT_IN_GOOD_STANDING",             default: false, null: false
    t.string   "ENROLLMENT_STATUS_MESSAGE",             limit: 500
    t.string   "ELIGIBILITY_STATUS_MESSAGE",            limit: 500
    t.string   "FINANCIAL_ACCOUNT_STATUS_MESSAGE",      limit: 500
    t.boolean  "IS_STUDENT",                                        default: false, null: false
    t.boolean  "IS_STAFF",                                          default: false, null: false
  end

  add_index "T_INTEGRATION_PERSON_INFO", ["ROW_ID"], name: "IX_ROW_ID_T_INTEGRATION_PERSON_INFO"

  create_table "T_INTEGRATION_PERSON_INFO_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                   null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                                   null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                null: false
    t.boolean  "IS_DELETED",                                           default: false, null: false
    t.uuid     "INTEGRATION_PERSON_INFO_ID",                                           null: false
    t.decimal  "INTEGRATION_RESPONSE_SECONDS", precision: 5, scale: 2
  end

  add_index "T_INTEGRATION_PERSON_INFO_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_INTEGRATION_PERSON_INFO_LOG"

  create_table "T_INTERNAL_ACCOUNTING_TRANSACTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "TRANSACTION_ID", null: false
    t.uuid "PARTY_ID",       null: false
  end

  add_index "T_INTERNAL_ACCOUNTING_TRANSACTION", ["ROW_ID"], name: "IX_ROW_ID_T_INTERNAL_ACCOUNTING_TRANSACTION"

  create_table "T_INVENTORY_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                        null: false
    t.uuid     "CREATION_USER_ID",                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                     null: false
    t.boolean  "IS_DELETED",                                default: false, null: false
    t.uuid     "PRODUCT_ID",                                                null: false
    t.uuid     "UOM_ID"
    t.uuid     "INVENTORY_ITEM_STATUS_TYPE_CV"
    t.varchar  "INVENTORY_ITEM_STATUS_COMMENT", limit: 150
    t.uuid     "FACILITY_ID"
    t.integer  "QUANTITY_ON_HAND",              limit: 4
    t.varchar  "SERIAL_NUM",                    limit: 50
    t.boolean  "IS_SERIALIZED",                             default: false, null: false
    t.boolean  "IS_AVAILABLE",                              default: false, null: false
    t.boolean  "IS_CHECKED_OUT",                            default: false, null: false
    t.datetime "DUE_DATETIME"
  end

  add_index "T_INVENTORY_ITEM", ["FACILITY_ID", "IS_AVAILABLE", "QUANTITY_ON_HAND"], name: "IX_T_INVENTORY_ITEM_FACILITY_ID_IS_AVAILABLE_QUANTITY_ON_HAND"
  add_index "T_INVENTORY_ITEM", ["PRODUCT_ID"], name: "T_INVENTORY_ITEM_PRODUCT_ID"
  add_index "T_INVENTORY_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_INVENTORY_ITEM"

  create_table "T_INVENTORY_ITEM_CHANGE_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "INVENTORY_ITEM_ID",                                 null: false
    t.integer  "QUANTITY",              limit: 4,                   null: false
    t.uuid     "FACILITY_ID"
    t.uuid     "PRODUCT_ID"
    t.string   "PRODUCT_NAME",          limit: 50
    t.uuid     "PRODUCT_TYPE_CV"
    t.string   "DESCRIPTION",           limit: 100
    t.integer  "QUANTITY_ON_HAND",      limit: 4
  end

  add_index "T_INVENTORY_ITEM_CHANGE_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_INVENTORY_ITEM_CHANGE_LOG"

  create_table "T_INVENTORY_ITEM_COUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                               null: false
    t.uuid     "CREATION_USER_ID",                                                 null: false
    t.datetime "CREATION_TIMESTAMP",                                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                            null: false
    t.boolean  "IS_DELETED",                                       default: false, null: false
    t.datetime "PHYSICAL_INVENTORY_DATE",                                          null: false
    t.uuid     "INVENTORY_ITEM_ID",                                                null: false
    t.decimal  "QUANTITY_ON_HAND",        precision: 18, scale: 0,                 null: false
    t.decimal  "PHYSICAL_COUNT",          precision: 18, scale: 0,                 null: false
  end

  add_index "T_INVENTORY_ITEM_COUNT", ["ROW_ID"], name: "IX_ROW_ID_T_INVENTORY_ITEM_COUNT"

  create_table "T_INVENTORY_ITEM_HOLD", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "INVENTORY_ITEM_ID",                     null: false
    t.uuid     "PARTY_ID",                              null: false
  end

  add_index "T_INVENTORY_ITEM_HOLD", ["ROW_ID"], name: "IX_ROW_ID_T_INVENTORY_ITEM_HOLD"

  create_table "T_INVENTORY_ITEM_VARIANCE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                          null: false
    t.uuid     "CREATION_USER_ID",                                            null: false
    t.datetime "CREATION_TIMESTAMP",                                          null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                         null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                       null: false
    t.boolean  "IS_DELETED",                                  default: false, null: false
    t.uuid     "INVENTORY_ITEM_ID",                                           null: false
    t.datetime "DATE_ADJUSTED",                                               null: false
    t.integer  "QUANTITY",                        limit: 4,                   null: false
    t.varchar  "COMMENTS",                        limit: 300
    t.uuid     "INVENTORY_ITEM_VARIANCE_TYPE_CV",                             null: false
  end

  add_index "T_INVENTORY_ITEM_VARIANCE", ["ROW_ID"], name: "IX_ROW_ID_T_INVENTORY_ITEM_VARIANCE"

  create_table "T_INVESTMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID",      null: false
    t.uuid "TYPE_CV", null: false
  end

  add_index "T_INVESTMENT", ["ROW_ID"], name: "IX_ROW_ID_T_INVESTMENT"

  create_table "T_INVOICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                         null: false
    t.uuid     "CREATION_USER_ID",                                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                      null: false
    t.boolean  "IS_DELETED",                                                 default: false, null: false
    t.varchar  "INVOICE_NUMBER",        limit: 100,                                          null: false
    t.datetime "INVOICE_DATE",                                                               null: false
    t.varchar  "MESSAGE",               limit: 150
    t.varchar  "DESCRIPTION",           limit: 150
    t.uuid     "COMPUTER_ID"
    t.uuid     "ORDER_ID"
    t.decimal  "INVOICE_AMOUNT",                    precision: 18, scale: 2, default: 0.0,   null: false
    t.boolean  "IS_VOID",                                                    default: false, null: false
    t.datetime "VOID_TIMESTAMP"
    t.uuid     "VOIDED_BY_USER_ID"
    t.boolean  "IS_AUTOMATED_INVOICE",                                       default: false, null: false
  end

  add_index "T_INVOICE", ["COMPUTER_ID", "ORDER_ID"], name: "T_INVOICE_COMPUTER_ID_ORDER_ID"
  add_index "T_INVOICE", ["COMPUTER_ID"], name: "T_INVOICE_COMPUTER_ID"
  add_index "T_INVOICE", ["COMPUTER_ID"], name: "T_INVOICE_COMPUTER_ID_ID_ORDER_ID"
  add_index "T_INVOICE", ["IS_DELETED", "IS_VOID"], name: "T_INVOICE_IS_DELETED_IS_VOID"
  add_index "T_INVOICE", ["IS_DELETED", "ORDER_ID"], name: "IX_T_INVOICE_IS_DELETED_ORDER_ID"
  add_index "T_INVOICE", ["ORDER_ID", "IS_VOID", "IS_AUTOMATED_INVOICE"], name: "T_INVOICE_ORDER_ID_IS_VOID_IS_AUTOMATED_INVOICE"
  add_index "T_INVOICE", ["ROW_ID"], name: "IX_ROW_ID_T_INVOICE"

  create_table "T_INVOICE_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                   null: false
    t.uuid     "CREATION_USER_ID",                                                                     null: false
    t.datetime "CREATION_TIMESTAMP",                                                                   null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                  null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                null: false
    t.boolean  "IS_DELETED",                                                           default: false, null: false
    t.uuid     "INVOICE_ID",                                                                           null: false
    t.decimal  "QUANTITY",                                    precision: 18, scale: 0,                 null: false
    t.decimal  "UNIT_PRICE",                                  precision: 18, scale: 4,                 null: false
    t.decimal  "PERCENTAGE",                                  precision: 9,  scale: 4
    t.varchar  "ITEM_DESCRIPTION",               limit: 1000
    t.uuid     "SOLD_WITH_ID"
    t.uuid     "PRODUCT_ID"
    t.uuid     "TAX_ITEM_ID"
    t.integer  "SEQUENCE_NUMBER",                limit: 4
    t.integer  "ADJUSTMENT_FOR_SEQUENCE_NUMBER", limit: 4
    t.uuid     "TYPE_CV"
    t.uuid     "ORDER_ITEM_ID"
  end

  add_index "T_INVOICE_ITEM", ["IS_DELETED", "INVOICE_ID"], name: "T_INVOICE_ITEM_IS_DELETED_INVOICE_ID"
  add_index "T_INVOICE_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_INVOICE_ITEM"

  create_table "T_INVOICE_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "INVOICE_ROLE_TYPE_CV",                  null: false
    t.uuid     "INVOICE_ID",                            null: false
    t.uuid     "PARTY_ID",                              null: false
  end

  add_index "T_INVOICE_ROLE", ["INVOICE_ROLE_TYPE_CV", "INVOICE_ID"], name: "T_INVOICE_ROLE_INVOICE_ROLE_TYPE_CV_INVOICE_ID"
  add_index "T_INVOICE_ROLE", ["INVOICE_ROLE_TYPE_CV"], name: "IX_T_INVOICE_ROLE_INVOICE_ROLE_TYPE_CV"
  add_index "T_INVOICE_ROLE", ["IS_DELETED", "INVOICE_ROLE_TYPE_CV"], name: "T_INVOICE_ROLE_IS_DELETED_INVOICE_ROLE_TYPE_CV"
  add_index "T_INVOICE_ROLE", ["ROW_ID"], name: "IX_ROW_ID_T_INVOICE_ROLE"

  create_table "T_ITEM_ISSUANCE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                             null: false
    t.uuid     "CREATION_USER_ID",                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                          null: false
    t.boolean  "IS_DELETED",                                     default: false, null: false
    t.uuid     "INVENTORY_ITEM_ID"
    t.uuid     "SHIPMENT_PACKAGE_ID",                                            null: false
    t.datetime "ISSUED_DATE_TIME",                                               null: false
    t.decimal  "QUANTITY",              precision: 18, scale: 0,                 null: false
  end

  add_index "T_ITEM_ISSUANCE", ["ROW_ID"], name: "IX_ROW_ID_T_ITEM_ISSUANCE"

  create_table "T_ITEM_VARIANCE_ACCOUNTING_TRANSACTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "TRANSACTION_ID",          null: false
    t.uuid     "ITEM_VARIANCE_ID",        null: false
    t.datetime "PHYSICAL_INVENTORY_DATE", null: false
  end

  add_index "T_ITEM_VARIANCE_ACCOUNTING_TRANSACTION", ["ROW_ID"], name: "IX_ROW_ID_T_ITEM_VARIANCE_ACCOUNTING_TRANSACTION"

  create_table "T_KIOSK_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                             null: false
    t.uuid     "CREATION_USER_ID",                                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                          null: false
    t.boolean  "IS_DELETED",                                                     default: false, null: false
    t.uuid     "SELF_REGISTRATION_WAIVER_ID"
    t.uuid     "SELF_REGISTRATION_WAIVER2_ID"
    t.integer  "STEP_TIMER_SECONDS",                          limit: 4,          default: 15,    null: false
    t.integer  "WAIVER_TIMER_SECONDS",                        limit: 4,          default: 30,    null: false
    t.integer  "COMPLETION_TIMER_SECONDS",                    limit: 4,          default: 15,    null: false
    t.string   "MEMBER_PORTAL_URL",                           limit: 500
    t.integer  "BANNER_BACKGROUND_COLOR",                     limit: 4
    t.integer  "BANNER_TITLE_TEXT_COLOR",                     limit: 4
    t.integer  "BANNER_ORG_NAME_TEXT_COLOR",                  limit: 4
    t.string   "BANNER_TITLE_TEXT",                           limit: 150
    t.string   "BANNER_ORG_NAME_TEXT",                        limit: 150
    t.binary   "BANNER_IMAGE_DATA",                           limit: 2147483647
    t.string   "CUSTOM_KIOSK_SETTINGS",                       limit: 4000
    t.uuid     "ENROLLMENT_ACTION_TYPE_CV"
    t.uuid     "ASSIGNED_MEMBERSHIP_ID"
    t.integer  "ASSIGNED_MEMBERSHIP_LENGTH",                  limit: 4
    t.datetime "ASSIGNED_MEMBERSHIP_START_DATE"
    t.datetime "ASSIGNED_MEMBERSHIP_END_DATE"
    t.integer  "ASSIGNED_MEMBERSHIP_RENEWAL_WINDOW_DAYS",     limit: 4,          default: 0,     null: false
    t.boolean  "PROMPT_FOR_HAND_TEMPLATE_IF_ALREADY_ON_FILE",                    default: false, null: false
  end

  add_index "T_KIOSK_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_KIOSK_SETTINGS"

  create_table "T_LANGUAGE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.integer  "LCID",                  limit: 4,                   null: false
    t.varchar  "DESCRIPTION",           limit: 100,                 null: false
  end

  add_index "T_LANGUAGE", ["ROW_ID"], name: "IX_ROW_ID_T_LANGUAGE"

  create_table "T_LIABILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                             null: false
    t.uuid     "CREATION_USER_ID",                                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                          null: false
    t.boolean  "IS_DELETED",                                                     default: false, null: false
    t.uuid     "PARTY_ID",                                                                       null: false
    t.uuid     "TYPE_CV"
    t.string   "DESCRIPTION",               limit: 100
    t.decimal  "BALANCE_OUTSTANDING",                   precision: 18, scale: 2
    t.decimal  "PAYMENT",                               precision: 18, scale: 2
    t.uuid     "PAYMENT_FREQUENCY_TYPE_CV"
    t.decimal  "CREDIT_LIMIT",                          precision: 18, scale: 2
    t.datetime "MATURITY_DATE"
    t.uuid     "PAYOFF_TYPE_CV"
  end

  add_index "T_LIABILITY", ["ROW_ID"], name: "IX_ROW_ID_T_LIABILITY"

  create_table "T_LISTENER_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 100,                 null: false
    t.uuid     "TYPE_CV",                                           null: false
  end

  add_index "T_LISTENER_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_LISTENER_GROUP"

  create_table "T_LISTENER_GROUP_COMPUTER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "LISTENER_GROUP_ID",                     null: false
    t.uuid     "DEVICE_ID",                             null: false
    t.uuid     "DEVICE_TYPE_CV",                        null: false
  end

  add_index "T_LISTENER_GROUP_COMPUTER", ["ROW_ID"], name: "IX_ROW_ID_T_LISTENER_GROUP_COMPUTER"

  create_table "T_LISTENER_GROUP_DEVICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "LISTENER_GROUP_ID",                     null: false
    t.uuid     "DEVICE_ID",                             null: false
    t.uuid     "DEVICE_TYPE_CV",                        null: false
  end

  add_index "T_LISTENER_GROUP_DEVICE", ["ROW_ID"], name: "IX_ROW_ID_T_LISTENER_GROUP_DEVICE"

  create_table "T_LOCK", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.uuid     "LOCK_BRAND_CV",                                    null: false
    t.varchar  "SERIAL_NUMBER",         limit: 15,                 null: false
    t.varchar  "CONTROL_CODE",          limit: 15
    t.varchar  "NOTE",                  limit: 50
    t.boolean  "IS_OUT_OF_SERVICE",                default: false, null: false
    t.boolean  "PENDING_AGREEMENT",                default: false, null: false
    t.uuid     "PENDING_AGREEMENT_ID"
  end

  add_index "T_LOCK", ["ROW_ID"], name: "IX_ROW_ID_T_LOCK"

  create_table "T_LOCKER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "LOCKER_ROW_ID",                                     null: false
    t.uuid     "LOCKER_TYPE_CV",                                    null: false
    t.varchar  "LOCKER_NUMBER",         limit: 15,                  null: false
    t.varchar  "SERIAL_NUMBER",         limit: 15
    t.boolean  "HAS_INTEGRATED_LOCK",               default: false, null: false
    t.boolean  "IS_FOR_DAY_USE_ONLY",               default: false, null: false
    t.string   "NOTE",                  limit: 300
    t.boolean  "IS_OUT_OF_SERVICE",                 default: false, null: false
    t.varchar  "CONTROL_KEY",           limit: 15
    t.boolean  "PENDING_AGREEMENT",                 default: false, null: false
    t.uuid     "PENDING_AGREEMENT_ID"
    t.boolean  "IS_IN_USE",                         default: false, null: false
  end

  add_index "T_LOCKER", ["IS_DELETED", "LOCKER_ROW_ID"], name: "T_LOCKER_IS_DELETED_LOCKER_ROW_ID"
  add_index "T_LOCKER", ["ROW_ID"], name: "IX_ROW_ID_T_LOCKER"

  create_table "T_LOCKER_AGREEMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                                          null: false
    t.uuid    "PRODUCT_ID"
    t.uuid    "SOLD_AT_ORGANIZATION_ID"
    t.uuid    "PRICE_ID"
    t.uuid    "LOCK_ASSIGNMENT_TYPE_CV"
    t.uuid    "SEMESTER_ID"
    t.decimal "CALCULATED_PRICE",                    precision: 9, scale: 2
    t.boolean "IS_LOCK_INCLUDED",                                            default: false, null: false
    t.boolean "IS_RENEWAL",                                                  default: false, null: false
    t.boolean "IS_RENEWED",                                                  default: false, null: false
    t.uuid    "RENEWED_LOCKER_SERVICE_AGREEMENT_ID"
  end

  add_index "T_LOCKER_AGREEMENT", ["ROW_ID"], name: "IX_ROW_ID_T_LOCKER_AGREEMENT"

  create_table "T_LOCKER_ASSIGNMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "AGREEMENT_ID",                          null: false
    t.uuid     "LOCKER_ID",                             null: false
    t.datetime "CLEANED_OUT_TIMESTAMP"
  end

  add_index "T_LOCKER_ASSIGNMENT", ["IS_DELETED", "LOCKER_ID", "CLEANED_OUT_TIMESTAMP"], name: "T_LOCKER_ASSIGNMENT_IS_DELETED_LOCKER_ID_CLEANED_OUT_TIMESTAMP"
  add_index "T_LOCKER_ASSIGNMENT", ["ROW_ID"], name: "IX_ROW_ID_T_LOCKER_ASSIGNMENT"

  create_table "T_LOCKER_ROW", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.varchar  "NAME",                  limit: 75,                 null: false
    t.uuid     "LOCKER_SECTION_ID",                                null: false
  end

  add_index "T_LOCKER_ROW", ["ROW_ID"], name: "IX_ROW_ID_T_LOCKER_ROW"

  create_table "T_LOCKER_SECTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "NAME",                  limit: 75,                  null: false
    t.varchar  "DESCRIPTION",           limit: 100
    t.uuid     "FACILITY_ID",                                       null: false
  end

  add_index "T_LOCKER_SECTION", ["ROW_ID"], name: "IX_ROW_ID_T_LOCKER_SECTION"

  create_table "T_LOCKER_SERVICE_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                           null: false
    t.uuid     "CREATION_USER_ID",                                             null: false
    t.datetime "CREATION_TIMESTAMP",                                           null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                          null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                        null: false
    t.boolean  "IS_DELETED",                                   default: false, null: false
    t.boolean  "ALLOW_LOCKER_FILTERING_BY_FACILITY",           default: false, null: false
    t.integer  "EXPIRING_SOON_DAYS",                 limit: 4
  end

  add_index "T_LOCKER_SERVICE_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_LOCKER_SERVICE_SETTINGS"

  create_table "T_LOCKER_SERVICE_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                      null: false
    t.uuid    "LOCKER_TYPE_CV",          null: false
    t.uuid    "LOCK_ASSIGNMENT_TYPE_CV"
    t.boolean "IS_LOCK_INCLUDED",        null: false
    t.boolean "ALLOW_PRORATE_PRICE"
    t.boolean "PRORATE_PRICE_ON_REFUND"
  end

  add_index "T_LOCKER_SERVICE_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_LOCKER_SERVICE_TYPE"

  create_table "T_LOCKER_SUMMARY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "LOCKER_ID",                                                     null: false
    t.varchar  "LOCKER_NUMBER",                     limit: 15
    t.varchar  "SERIAL_NUMBER",                     limit: 15
    t.boolean  "IS_OUT_OF_SERVICE",                             default: false
    t.boolean  "IS_FOR_DAY_USE_ONLY"
    t.boolean  "HAS_INTEGRATED_LOCK"
    t.uuid     "LOCKER_TYPE_CV"
    t.varchar  "NOTE",                              limit: 50
    t.boolean  "PENDING_AGREEMENT"
    t.uuid     "LOCKER_ROW_ID"
    t.varchar  "LOCKER_ROW_NAME",                   limit: 75
    t.uuid     "LOCKER_SECTION_ID"
    t.varchar  "LOCKER_SECTION_NAME",               limit: 75
    t.uuid     "FACILITY_ID"
    t.varchar  "FACILITY_NAME",                     limit: 150
    t.uuid     "LOCKER_ASSIGNMENT_ID"
    t.datetime "LOCKER_ASSIGNMENT_START_DATE"
    t.datetime "LOCKER_ASSIGNMENT_UNTIL_DATE"
    t.uuid     "LOCKER_ASSIGNED_TO_PARTY_ID"
    t.varchar  "LOCKER_ASSIGNED_TO_PARTY_FULLNAME", limit: 100
    t.uuid     "LOCK_ASSIGNMENT_ID"
    t.uuid     "LOCK_ID"
    t.varchar  "LOCK_SERIAL_NUMBER",                limit: 15
    t.varchar  "CURRENT_COMBINATION",               limit: 15
    t.uuid     "FACILITY_ALLOWABLE_GENDERS_CV"
  end

  add_index "T_LOCKER_SUMMARY", ["ROW_ID"], name: "IX_ROW_ID_T_LOCKER_SUMMARY"

  create_table "T_LOCK_ASSIGNMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "LOCKER_ID",                             null: false
    t.uuid     "LOCK_ID",                               null: false
    t.uuid     "AGREEMENT_ID"
  end

  add_index "T_LOCK_ASSIGNMENT", ["IS_DELETED", "UNTIL_DATE", "LOCKER_ID"], name: "T_LOCK_ASSIGNMENT_IS_DELETED_UNTIL_DATE_LOCKER_ID"
  add_index "T_LOCK_ASSIGNMENT", ["ROW_ID"], name: "IX_ROW_ID_T_LOCK_ASSIGNMENT"

  create_table "T_LOCK_COMBINATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.uuid     "LOCK_ID"
    t.uuid     "LOCKER_ID"
    t.varchar  "COMBINATION",           limit: 15,                 null: false
    t.datetime "EFFECTIVE_DATE"
    t.datetime "UNTIL_DATE"
    t.integer  "SEQUENCE",              limit: 4,  default: 0
  end

  add_index "T_LOCK_COMBINATION", ["IS_DELETED", "LOCKER_ID", "UNTIL_DATE"], name: "T_LOCK_COMBINATION_IS_DELETED_LOCKER_ID_UNTIL_DATE"
  add_index "T_LOCK_COMBINATION", ["IS_DELETED", "UNTIL_DATE"], name: "T_LOCK_COMBINATION_IS_DELETED_UNTIL_DATE"
  add_index "T_LOCK_COMBINATION", ["IS_DELETED"], name: "T_LOCK_COMBINATION_IS_DELETED"
  add_index "T_LOCK_COMBINATION", ["LOCK_ID"], name: "IX_T_LOCK_COMBINATION_LOCK_ID"
  add_index "T_LOCK_COMBINATION", ["ROW_ID"], name: "IX_ROW_ID_T_LOCK_COMBINATION"

  create_table "T_LOCK_IMPORT_STAGING", primary_key: "ROW_ID", force: :cascade do |t|
    t.varchar "SERIALNO",   limit: 150
    t.varchar "CONTROLKEY", limit: 150
    t.varchar "COMBO1",     limit: 150
    t.varchar "COMBO2",     limit: 150
    t.varchar "COMBO3",     limit: 150
    t.varchar "COMBO4",     limit: 150
    t.varchar "COMBO5",     limit: 150
    t.varchar "NOTE",       limit: 50
  end

  add_index "T_LOCK_IMPORT_STAGING", ["ROW_ID"], name: "IX_ROW_ID_T_LOCK_IMPORT_STAGING"

  create_table "T_MAG_STRIPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                     null: false
    t.integer "TRACK",                        limit: 4, null: false
    t.integer "TRACK_LENGTH",                 limit: 4
    t.integer "FIELD",                        limit: 4, null: false
    t.integer "FIELD_LENGTH",                 limit: 4
    t.integer "START_POSITION",               limit: 4
    t.integer "NUMBER_OF_CHARACTERS",         limit: 4
    t.integer "VERSION_START_POSITION",       limit: 4
    t.integer "VERSION_NUMBER_OF_CHARACTERS", limit: 4
  end

  add_index "T_MAG_STRIPE", ["ROW_ID"], name: "IX_ROW_ID_T_MAG_STRIPE"

  create_table "T_MAIN_ORGANIZATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                                 null: false
    t.uuid    "REVENUE_ORGANIZATION_GL_ACCOUNT_ID"
    t.uuid    "EXPENSE_ORGANIZATION_GL_ACCOUNT_ID"
    t.uuid    "ASSET_ORGANIZATION_GL_ACCOUNT_ID"
    t.uuid    "LIABILITY_ORGANIZATION_GL_ACCOUNT_ID"
    t.uuid    "ACCOUNTS_RECEIVABLE_GL_ACCOUNT_ID"
    t.string  "IMAGE_DIRECTORY",                        limit: 300
    t.uuid    "IMAGE_EXTERNAL_ID"
    t.integer "EXTERNAL_ID_NUMBER_LENGTH",              limit: 4
    t.boolean "IS_PASSBACK_CHECKING_ENABLED",                       default: false, null: false
    t.boolean "IS_FACILITY_ACCESS_ALLOWED_ON_PASSBACK",             default: false, null: false
    t.integer "PASSBACK_WARNING_PERIOD_MINUTES",        limit: 4,   default: 5
    t.integer "MONTHLY_BILLING_CYCLE_DAY",              limit: 4,   default: 1,     null: false
    t.integer "BILLING_BATCH_MAX_DAYS_BEFORE",          limit: 4,   default: 0,     null: false
    t.integer "BILLING_BATCH_MAX_DAYS_AFTER",           limit: 4,   default: 0,     null: false
    t.boolean "IS_SAVE_EXIT_ONLY_EVENTS_ENABLED",                   default: false, null: false
    t.boolean "AUTO_POPULATE_ADDRESS",                              default: true,  null: false
  end

  add_index "T_MAIN_ORGANIZATION", ["ROW_ID"], name: "IX_ROW_ID_T_MAIN_ORGANIZATION"

  create_table "T_MANUFACTURER_SUGGESTED_PRICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_MANUFACTURER_SUGGESTED_PRICE", ["ROW_ID"], name: "IX_ROW_ID_T_MANUFACTURER_SUGGESTED_PRICE"

  create_table "T_MEMBER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                     null: false
    t.string   "ID_NUMBER",                                  limit: 100,                 null: false
    t.string   "PROGRAM_INFORMATION",                        limit: 100
    t.boolean  "IS_ACTIVE"
    t.datetime "FORGOT_ACCESS_MEDIA_LAST_CLEARED_TIMESTAMP"
    t.uuid     "MEMBERSHIP_TYPE_ELIGIBILITY_ID"
    t.uuid     "FORGOT_ACCESS_MEDIA_LAST_CLEARED_USER_ID"
    t.boolean  "EMAIL_OPT_IN",                                           default: false, null: false
  end

  add_index "T_MEMBER", ["FORGOT_ACCESS_MEDIA_LAST_CLEARED_TIMESTAMP"], name: "IX_T_MEMBER_FORGOT_ACCESS_MEDIA_LAST_CLEARED_TIMESTAMP"
  add_index "T_MEMBER", ["ID_NUMBER"], name: "IX_T_MEMBER_ID_NUMBER"
  add_index "T_MEMBER", ["MEMBERSHIP_TYPE_ELIGIBILITY_ID"], name: "T_MEMBER_MEMBERSHIP_TYPE_ELIGIBILITY_ID"
  add_index "T_MEMBER", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBER"

  create_table "T_MEMBERSHIP_AGREEMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                                      null: false
    t.uuid    "PRODUCT_ID",                                                              null: false
    t.uuid    "SOLD_AT_ORGANIZATION_ID"
    t.uuid    "PRICE_ID"
    t.uuid    "SEMESTER_ID"
    t.decimal "CALCULATED_PRICE",                precision: 9, scale: 2
    t.boolean "IS_RENEWAL"
    t.boolean "IS_RENEWED"
    t.uuid    "RENEWED_MEMBERSHIP_AGREEMENT_ID"
    t.uuid    "FAMILY_UNIT_ID"
    t.boolean "IS_ADDITIONAL_INFO_REQUIRED",                             default: false, null: false
    t.boolean "IS_ADDITIONAL_INFO_COMPLETED",                            default: false, null: false
  end

  add_index "T_MEMBERSHIP_AGREEMENT", ["PRODUCT_ID"], name: "T_MEMBERSHIP_AGREEMENT_PRODUCT_ID"
  add_index "T_MEMBERSHIP_AGREEMENT", ["PRODUCT_ID"], name: "T_MEMBERSHIP_AGREEMENT_PRODUCT_ID_ID_PRICE_ID"
  add_index "T_MEMBERSHIP_AGREEMENT", ["PRODUCT_ID"], name: "T_MEMBERSHIP_AGREEMENT_PRODUCT_ID_PRICE_ID"
  add_index "T_MEMBERSHIP_AGREEMENT", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBERSHIP_AGREEMENT"

  create_table "T_MEMBERSHIP_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                            null: false
    t.uuid     "CREATION_USER_ID",                                                              null: false
    t.datetime "CREATION_TIMESTAMP",                                                            null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                           null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                         null: false
    t.boolean  "IS_DELETED",                                                    default: false, null: false
    t.uuid     "DEFAULT_MEMBERSHIP_TYPE_ID"
    t.uuid     "DEFAULT_SERVICE_PERIOD_ID"
    t.boolean  "IS_MEMBERSHIP_VALIDATION_AT_FACILITY_ACCESS_ENABLED",           default: false, null: false
    t.integer  "EXPIRING_SOON_DAYS",                                  limit: 4
  end

  add_index "T_MEMBERSHIP_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBERSHIP_SETTINGS"

  create_table "T_MEMBERSHIP_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                    null: false
    t.uuid    "ID_CARD_ID"
    t.boolean "ALLOW_PRORATE_PRICE",                   default: false
    t.uuid    "ACCESS_PROFILE_ID"
    t.boolean "IS_FAMILY_MEMBERSHIP"
    t.boolean "PRORATE_PRICE_ON_REFUND"
    t.boolean "IS_RENEWABLE_ONLINE",                   default: false
    t.boolean "IS_WAIVER_ACCEPTANCE_REQUIRED_ONLINE",  default: false
    t.boolean "IS_WAIVER_VISIBLE_ONLINE",              default: false
    t.boolean "IMLEAGUES_IS_ELIGIBLE_FOR_INTRAMURALS", default: false, null: false
    t.boolean "IMLEAGUES_IS_ELIGIBLE_FOR_FITNESS",     default: false, null: false
    t.boolean "IMLEAGUES_IS_ELIGIBLE_FOR_CLUBS",       default: false, null: false
    t.boolean "IS_ELIGIBLE_FOR_FUSION_IM",             default: false, null: false
  end

  add_index "T_MEMBERSHIP_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBERSHIP_TYPE"

  create_table "T_MEMBERSHIP_TYPE_ELIGIBILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "NAME",                  limit: 50,                  null: false
    t.varchar  "DESCRIPTION",           limit: 300
    t.varchar  "IMPORT_CODE",           limit: 50
  end

  add_index "T_MEMBERSHIP_TYPE_ELIGIBILITY", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBERSHIP_TYPE_ELIGIBILITY"

  create_table "T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                             null: false
    t.uuid     "CREATION_USER_ID",                               null: false
    t.datetime "CREATION_TIMESTAMP",                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                          null: false
    t.boolean  "IS_DELETED",                     default: false, null: false
    t.uuid     "IMPORT_FORMAT_ID",                               null: false
    t.uuid     "MEMBERSHIP_TYPE_ELIGIBILITY_ID",                 null: false
  end

  add_index "T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT"

  create_table "T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                             null: false
    t.uuid     "CREATION_USER_ID",                               null: false
    t.datetime "CREATION_TIMESTAMP",                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                          null: false
    t.boolean  "IS_DELETED",                     default: false, null: false
    t.uuid     "MEMBERSHIP_TYPE_ELIGIBILITY_ID",                 null: false
    t.uuid     "MEMBERSHIP_TYPE_ID",                             null: false
  end

  add_index "T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP"

  create_table "T_MEMBERSHIP_TYPE_FAMILY_RELATIONSHIP_RESTRICTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                  null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "RELATIONSHIP_TYPE_CV",                            null: false
    t.integer  "MAX_ALLOWED",           limit: 4,                 null: false
    t.uuid     "MEMBERSHIP_TYPE_ID",                              null: false
  end

  add_index "T_MEMBERSHIP_TYPE_FAMILY_RELATIONSHIP_RESTRICTION", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBERSHIP_TYPE_FAMILY_RELATIONSHIP_RESTRICTION"

  create_table "T_MEMBER_SUSPENSION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                    null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "PARTY_ROLE_ID",                                     null: false
    t.uuid     "REASON_TYPE_CV",                                    null: false
    t.string   "COMMENT",               limit: 500
  end

  add_index "T_MEMBER_SUSPENSION", ["ROW_ID"], name: "IX_ROW_ID_T_MEMBER_SUSPENSION"

  create_table "T_MULTI_VISIT_PASS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                    null: false
    t.uuid    "ACCESS_PROFILE_ID"
    t.integer "VISIT_COUNT",                 limit: 4
    t.integer "NUMBER_OF_DAYS_UNTIL_EXPIRY", limit: 4
    t.uuid    "ID_CARD_ID"
  end

  add_index "T_MULTI_VISIT_PASS", ["ROW_ID"], name: "IX_ROW_ID_T_MULTI_VISIT_PASS"

  create_table "T_MULTI_VISIT_PASS_INSTANCE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.string   "ID_NUMBER",             limit: 50,                 null: false
    t.uuid     "MULTI_VISIT_PASS_ID",                              null: false
    t.uuid     "ORDER_ITEM_ID",                                    null: false
    t.uuid     "CUSTOMER_PARTY_ID"
    t.datetime "REDEMPTION_DATE"
    t.boolean  "IS_CANCELLED",                     default: false, null: false
    t.datetime "EFFECTIVE_DATE"
    t.datetime "UNTIL_DATE"
    t.integer  "VISIT_COUNT",           limit: 4,                  null: false
    t.integer  "VISITS_REMAINING",      limit: 4,                  null: false
  end

  add_index "T_MULTI_VISIT_PASS_INSTANCE", ["ROW_ID"], name: "IX_ROW_ID_T_MULTI_VISIT_PASS_INSTANCE"

  create_table "T_MULTI_VISIT_PASS_INSTANCE_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CHANGED_BY_USER_ID",                                 null: false
    t.datetime "VALID_UNTIL",                                        null: false
    t.boolean  "VISITS_REMAINING_CHANGED",           default: false, null: false
    t.integer  "VISITS_REMAINING",         limit: 4
  end

  add_index "T_MULTI_VISIT_PASS_INSTANCE_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_MULTI_VISIT_PASS_INSTANCE_HISTORY"

  create_table "T_NEWS_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                null: false
    t.uuid     "CREATION_USER_ID",                                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                             null: false
    t.boolean  "IS_DELETED",                                        default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                                    null: false
    t.datetime "UNTIL_DATE"
    t.string   "HEADLINE",                       limit: 150,                        null: false
    t.string   "SHORT_BODY",                     limit: 150
    t.text     "BODY",                           limit: 2147483647
    t.uuid     "APPLICATION_VISIBILITY_TYPE_CV",                                    null: false
  end

  add_index "T_NEWS_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_NEWS_ITEM"

  create_table "T_NIRSA_LEAD", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP"
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP"
    t.boolean  "IS_DELETED",                         default: false
    t.string   "NAME",                  limit: 200
    t.string   "EMAIL_ADDRESS",         limit: 200
    t.string   "PHONE_NUMBER",          limit: 200
    t.string   "COMMENTS",              limit: 1000
    t.string   "SCHOOL_NAME",           limit: 200
  end

  add_index "T_NIRSA_LEAD", ["ROW_ID"], name: "IX_ROW_ID_T_NIRSA_LEAD"

  create_table "T_NOTE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                      null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                                      null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                   null: false
    t.boolean  "IS_DELETED",                                              default: false, null: false
    t.varchar  "SUBJECT",                                     limit: 75,                  null: false
    t.varchar  "BODY",                                        limit: 300,                 null: false
    t.uuid     "OWNER_PARTY_ID",                                                          null: false
    t.boolean  "IS_PUBLIC",                                               default: false
    t.uuid     "NOTE_TYPE_CV"
    t.datetime "EFFECTIVE_DATE",                                                          null: false
    t.datetime "UNTIL_DATE"
    t.boolean  "REQUIRES_ACKNOWLEDGEMENT_AT_FACILITY_ACCESS",             default: false, null: false
  end

  add_index "T_NOTE", ["OWNER_PARTY_ID", "IS_PUBLIC"], name: "IX_T_NOTE_OWNER_PARTY_ID_IS_PUBLIC"
  add_index "T_NOTE", ["ROW_ID"], name: "IX_ROW_ID_T_NOTE"

  create_table "T_NOTE_ACKNOWLEDGEMENT_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "COMPUTER_ID",                           null: false
    t.uuid     "NOTE_ID",                               null: false
  end

  add_index "T_NOTE_ACKNOWLEDGEMENT_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_NOTE_ACKNOWLEDGEMENT_LOG"

  create_table "T_ONECARD_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                      null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                      null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                   null: false
    t.boolean  "IS_INTEGRATION_ENABLED",                  default: false, null: false
    t.string   "APP_ID",                      limit: 50
    t.string   "SERVICE_ENDPOINT",            limit: 500
    t.string   "CAMS_SERVICE_ENDPOINT",       limit: 500
    t.uuid     "EXTERNAL_ID_TYPE_CV"
    t.string   "PERSON_TYPE",                 limit: 50
    t.boolean  "IS_CAMS_INTEGRATION_ENABLED"
  end

  add_index "T_ONECARD_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_ONECARD_SETTINGS"

  create_table "T_OPERATING_HOURS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.boolean  "IS_OPEN_MONDAY",        default: false, null: false
    t.boolean  "IS_OPEN_TUESDAY",       default: false, null: false
    t.boolean  "IS_OPEN_WEDNESDAY",     default: false, null: false
    t.boolean  "IS_OPEN_THURSDAY",      default: false, null: false
    t.boolean  "IS_OPEN_FRIDAY",        default: false, null: false
    t.boolean  "IS_OPEN_SATURDAY",      default: false, null: false
    t.boolean  "IS_OPEN_SUNDAY",        default: false, null: false
    t.datetime "MONDAY_TIME_OPEN"
    t.datetime "MONDAY_TIME_CLOSE"
    t.datetime "TUESDAY_TIME_OPEN"
    t.datetime "TUESDAY_TIME_CLOSE"
    t.datetime "WEDNESDAY_TIME_OPEN"
    t.datetime "WEDNESDAY_TIME_CLOSE"
    t.datetime "THURSDAY_TIME_OPEN"
    t.datetime "THURSDAY_TIME_CLOSE"
    t.datetime "FRIDAY_TIME_OPEN"
    t.datetime "FRIDAY_TIME_CLOSE"
    t.datetime "SATURDAY_TIME_OPEN"
    t.datetime "SATURDAY_TIME_CLOSE"
    t.datetime "SUNDAY_TIME_OPEN"
    t.datetime "SUNDAY_TIME_CLOSE"
  end

  add_index "T_OPERATING_HOURS", ["ROW_ID"], name: "IX_ROW_ID_T_OPERATING_HOURS"

  create_table "T_OPTIONAL_FEATURE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_OPTIONAL_FEATURE", ["ROW_ID"], name: "IX_ROW_ID_T_OPTIONAL_FEATURE"

  create_table "T_ORDER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.datetime "ORDER_DATE",                                        null: false
    t.varchar  "ORDER_NUMBER",          limit: 100,                 null: false
    t.uuid     "COMPUTER_ID"
    t.boolean  "IS_ONLINE_ORDER",                   default: false
    t.boolean  "IS_IN_PROGRESS"
    t.string   "CUSTOMER_FIRST_NAME",   limit: 50
    t.string   "CUSTOMER_LAST_NAME",    limit: 50
    t.datetime "VOID_TIMESTAMP"
    t.boolean  "IS_VOID",                           default: false, null: false
    t.uuid     "VOIDED_BY_USER_ID"
    t.string   "VOID_REASON",           limit: 500
    t.uuid     "STATUS_CV"
    t.integer  "PAYMENT_ATTEMPT_COUNT", limit: 4
  end

  add_index "T_ORDER", ["IS_DELETED", "IS_IN_PROGRESS"], name: "IX_T_ORDER_IS_DELETED_IS_IN_PROGRESS"
  add_index "T_ORDER", ["IS_DELETED", "IS_VOID", "STATUS_CV", "ORDER_DATE", "IS_ONLINE_ORDER"], name: "T_ORDER_IS_VOID_STATUS_CV_ORDER_DATE_IS_ONLINE_ORDER"
  add_index "T_ORDER", ["IS_DELETED", "ORDER_NUMBER"], name: "IX_T_ORDER_IS_DELETED_ORDER_NUMBER"
  add_index "T_ORDER", ["IS_DELETED", "STATUS_CV"], name: "T_ORDER_IS_DELETED_STATUS_CV"
  add_index "T_ORDER", ["ORDER_NUMBER", "STATUS_CV"], name: "T_ORDER_ORDER_NUMBER_STATUS_CV"
  add_index "T_ORDER", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER"

  create_table "T_ORDER_ADJUSTMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                         null: false
    t.uuid     "CREATION_USER_ID",                                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                      null: false
    t.boolean  "IS_DELETED",                                                 default: false, null: false
    t.uuid     "ORDER_ADJUST_TYPE_CV",                                                       null: false
    t.uuid     "ORDER_ID"
    t.uuid     "ORDER_ITEM_ID"
    t.decimal  "AMOUNT",                            precision: 18, scale: 4
    t.decimal  "PERCENTAGE",                        precision: 9,  scale: 4
    t.varchar  "DESCRIPTION",           limit: 100
    t.boolean  "IS_WAIVED",                                                  default: false, null: false
    t.varchar  "COMMENTS",              limit: 150
    t.uuid     "TAX_ITEM_ID"
  end

  add_index "T_ORDER_ADJUSTMENT", ["IS_DELETED", "ORDER_ADJUST_TYPE_CV", "ORDER_ITEM_ID"], name: "IX_T_ORDER_ADJUSTMENT_IS_DELETED_ORDER_ADJUST_TYPE_CV_ORDER_ITEM_ID"
  add_index "T_ORDER_ADJUSTMENT", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_ADJUSTMENT"

  create_table "T_ORDER_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                  null: false
    t.uuid     "CREATION_USER_ID",                                                                    null: false
    t.datetime "CREATION_TIMESTAMP",                                                                  null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                 null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                               null: false
    t.boolean  "IS_DELETED",                                                          default: false, null: false
    t.uuid     "ORDER_ID",                                                                            null: false
    t.uuid     "PRODUCT_ID"
    t.decimal  "QUANTITY",                                   precision: 18, scale: 0
    t.decimal  "UNIT_PRICE",                                 precision: 18, scale: 4
    t.string   "PRODUCT_NAME",            limit: 50
    t.string   "DESCRIPTION",             limit: 300
    t.varchar  "COMMENTS",                limit: 300
    t.integer  "ITEM_SEQUENCE_NUMBER",    limit: 4,                                                   null: false
    t.uuid     "PARENT_ORDER_ITEM_ID"
    t.uuid     "GIFT_CERTIFICATE_ID"
    t.uuid     "INVENTORY_ITEM_ID"
    t.uuid     "REGISTRATION_ID"
    t.uuid     "REFUND_FOR_ID"
    t.uuid     "AGREEMENT_ID"
    t.uuid     "UOM_ID"
    t.uuid     "AGREEMENT_ITEM_ID"
    t.boolean  "IS_MANDATORY_CHILD_ITEM",                                             default: false, null: false
    t.text     "RECEIPT_TEXT",            limit: 2147483647
    t.uuid     "PRICE_ID"
    t.uuid     "TAX_GROUP_ID"
  end

  add_index "T_ORDER_ITEM", ["AGREEMENT_ID", "QUANTITY"], name: "IX_T_ORDER_ITEM_AGREEMENT_ID_QUANTITY"
  add_index "T_ORDER_ITEM", ["IS_DELETED", "ORDER_ID"], name: "T_ORDER_ITEM_IS_DELETED_ORDER_ID"
  add_index "T_ORDER_ITEM", ["IS_DELETED", "PARENT_ORDER_ITEM_ID"], name: "T_ORDER_ITEM_IS_DELETED_PARENT_ORDER_ITEM_ID"
  add_index "T_ORDER_ITEM", ["IS_DELETED", "PRODUCT_ID"], name: "T_ORDER_ITEM_IS_DELETED_PRODUCT_ID"
  add_index "T_ORDER_ITEM", ["IS_DELETED", "REFUND_FOR_ID"], name: "Index_OrderItemIsDeletedRefundForId"
  add_index "T_ORDER_ITEM", ["IS_DELETED", "REFUND_FOR_ID"], name: "Index_OrderItemIsDeletedRefundForIdOrderIdQuantity"
  add_index "T_ORDER_ITEM", ["IS_DELETED"], name: "Index_OrderItemIsDeletedIdOrderIdProductIdProductName"
  add_index "T_ORDER_ITEM", ["IS_DELETED"], name: "T_ORDER_ITEM_IS_DELETED"
  add_index "T_ORDER_ITEM", ["IS_DELETED"], name: "T_ORDER_ITEM_IS_DELETED_ID_ORDER_ID"
  add_index "T_ORDER_ITEM", ["IS_DELETED"], name: "T_ORDER_ITEM_IS_DELETED_ID_ORDER_ID_QUANTITY_UNIT_PRICE"
  add_index "T_ORDER_ITEM", ["ORDER_ID"], name: "IX_T_ORDER_ITEM_ORDER_ID"
  add_index "T_ORDER_ITEM", ["QUANTITY"], name: "IX_T_ORDER_ITEM_QUANTITY"
  add_index "T_ORDER_ITEM", ["REFUND_FOR_ID"], name: "T_ORDER_ITEM_REFUND_FOR_ID_ID"
  add_index "T_ORDER_ITEM", ["REGISTRATION_ID", "QUANTITY"], name: "IX_T_ORDER_ITEM_REGISTRATION_ID_QUANTITY"
  add_index "T_ORDER_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_ITEM"

  create_table "T_ORDER_ITEM_BILLING", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                             null: false
    t.uuid     "CREATION_USER_ID",                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                          null: false
    t.boolean  "IS_DELETED",                                     default: false, null: false
    t.uuid     "ORDER_ITEM_ID",                                                  null: false
    t.uuid     "INVOICE_ITEM_ID",                                                null: false
    t.decimal  "QUANTITY",              precision: 18, scale: 0
    t.decimal  "AMOUNT",                precision: 18, scale: 0
  end

  add_index "T_ORDER_ITEM_BILLING", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_ITEM_BILLING"

  create_table "T_ORDER_ITEM_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                      null: false
    t.uuid     "CREATION_USER_ID",                        null: false
    t.datetime "CREATION_TIMESTAMP",                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                   null: false
    t.boolean  "IS_DELETED",              default: false, null: false
    t.uuid     "ORDER_ITEM_ID",                           null: false
    t.uuid     "PARTY_ID",                                null: false
    t.uuid     "ORDER_ITEM_ROLE_TYPE_ID",                 null: false
  end

  add_index "T_ORDER_ITEM_ROLE", ["ORDER_ITEM_ID", "PARTY_ID", "ORDER_ITEM_ROLE_TYPE_ID"], name: "IX_T_ORDER_ITEM_ROLE"
  add_index "T_ORDER_ITEM_ROLE", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_ITEM_ROLE"

  create_table "T_ORDER_ITEM_ROLE_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_ORDER_ITEM_ROLE_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_ITEM_ROLE_TYPE"

  create_table "T_ORDER_NUMBER_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                       null: false
    t.varchar  "ORDER_NUMBER", limit: 100, null: false
    t.datetime "VALID_UNTIL",              null: false
  end

  add_index "T_ORDER_NUMBER_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_NUMBER_HISTORY"

  create_table "T_ORDER_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                            null: false
    t.uuid     "CREATION_USER_ID",                                              null: false
    t.datetime "CREATION_TIMESTAMP",                                            null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                           null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                         null: false
    t.boolean  "IS_DELETED",                                    default: false, null: false
    t.uuid     "ORDER_ID",                                                      null: false
    t.uuid     "PARTY_ID",                                                      null: false
    t.uuid     "ORDER_ROLE_TYPE_CV"
    t.decimal  "PERCENT_CONTRIBUTION",  precision: 9, scale: 4
  end

  add_index "T_ORDER_ROLE", ["IS_DELETED", "ORDER_ID", "ORDER_ROLE_TYPE_CV"], name: "T_ORDER_ROLE_IS_DELETED_ORDER_ID_ORDER_ROLE_TYPE_CV"
  add_index "T_ORDER_ROLE", ["IS_DELETED", "ORDER_ROLE_TYPE_CV"], name: "T_ORDER_ROLE_IS_DELETED_ORDER_ROLE_TYPE_CV"
  add_index "T_ORDER_ROLE", ["IS_DELETED", "PARTY_ID", "ORDER_ROLE_TYPE_CV"], name: "IX_T_ORDER_ROLE_IS_DELETED_PARTY_ID_ORDER_ROLE_TYPE_CV"
  add_index "T_ORDER_ROLE", ["ORDER_ID", "ORDER_ROLE_TYPE_CV"], name: "T_ORDER_ROLE_ORDER_ID_ORDER_ROLE_TYPE_CV"
  add_index "T_ORDER_ROLE", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_ROLE"

  create_table "T_ORDER_STATUS_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",               null: false
    t.uuid     "CREATION_USER_ID", null: false
    t.datetime "VALID_UNTIL",      null: false
    t.uuid     "STATUS_CV",        null: false
  end

  add_index "T_ORDER_STATUS_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_STATUS_HISTORY"

  create_table "T_ORDER_VALUE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                   null: false
    t.decimal "FROM_AMOUNT", precision: 18, scale: 0, null: false
    t.decimal "TO_AMOUNT",   precision: 18, scale: 0
  end

  add_index "T_ORDER_VALUE", ["ROW_ID"], name: "IX_ROW_ID_T_ORDER_VALUE"

  create_table "T_ORGANIZATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid        "ID",                                                                                     null: false
    t.uuid        "CREATION_USER_ID",                                                                       null: false
    t.datetime    "CREATION_TIMESTAMP",                                                                     null: false
    t.uuid        "LAST_UPDATE_USER_ID",                                                                    null: false
    t.datetime    "LAST_UPDATE_TIMESTAMP",                                                                  null: false
    t.boolean     "IS_DELETED",                                                             default: false, null: false
    t.varchar     "NAME",                                                limit: 100,                        null: false
    t.varchar     "LEGAL_NAME",                                          limit: 100
    t.varchar     "DESCRIPTION",                                         limit: 300
    t.uuid        "BUSINESS_TYPE_CV"
    t.boolean     "IS_PUBLISHED_ONLINE"
    t.varchar     "WEB_SITE_URL",                                        limit: 255
    t.varchar_max "RECEIPT_HEADER",                                      limit: 2147483647
    t.varchar_max "RECEIPT_FOOTER",                                      limit: 2147483647
    t.binary      "RECEIPT_IMAGE_DATA",                                  limit: 2147483647
    t.uuid        "CREDIT_CARD_PRINTING_OPTION_CODE"
    t.uuid        "SOLD_TO_PRINTING_OPTION_CODE"
    t.boolean     "ENABLE_DISPLAY_OF_SIGNATURE_LINE_ON_ALL_RECEIPTS"
    t.uuid        "DEFAULT_MEMBERSHIP_TYPE_ID"
    t.uuid        "DEFAULT_SERVICE_PERIOD_ID"
    t.boolean     "IS_MEMBERSHIP_VALIDATION_AT_FACILITY_ACCESS_ENABLED",                    default: false
    t.integer     "FORGET_ACCESS_MEDIA_LIMIT",                           limit: 4
    t.boolean     "ALLOW_ACCESS_IF_FORGET_MEDIA"
    t.boolean     "ALLOW_ACCESS_IF_ACCESS_PROFILE_NOT_SET"
    t.uuid        "FACILITY_ACCESS_GROUP_MEMBERSHIP_TYPE_ID"
    t.boolean     "ALLOW_LOCKER_FILTERING_BY_FACILITY"
    t.boolean     "PRINT_LOCK_COMBINATION_ON_RECEIPT",                                      default: false
    t.boolean     "RECEIPT_PRINT_CUSTOMER_NAME",                                            default: true
    t.boolean     "RECEIPT_PRINT_ORDER_DATE",                                               default: true
    t.boolean     "RECEIPT_PRINT_USER_NAME",                                                default: true
    t.boolean     "RECEIPT_PRINT_COMPUTER",                                                 default: true
    t.boolean     "RECEIPT_PRINT_ITEM_CUSTOMER_INFORMATION",                                default: true
    t.boolean     "RECEIPT_PRINT_CUSTOMER_ADDRESS",                                         default: true
    t.boolean     "TENDER_SUMMARY_RECEIPT_PRINT_CASH_BREAKDOWN",                            default: true
    t.boolean     "RECEIPT_PRINT_ITEM_COMMENTS",                                            default: false
    t.boolean     "SPECIFY_GROUP_MEMBER",                                                   default: false, null: false
    t.boolean     "ALLOW_GROUP_ACCESS",                                                     default: false, null: false
  end

  add_index "T_ORGANIZATION", ["ROW_ID"], name: "IX_ROW_ID_T_ORGANIZATION"

  create_table "T_ORGANIZATION_GL_ACCOUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                null: false
    t.uuid     "CREATION_USER_ID",                                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                             null: false
    t.boolean  "IS_DELETED",                                        default: false, null: false
    t.uuid     "ORGANIZATION_ID",                                                   null: false
    t.uuid     "GENERAL_LEDGER_ACCOUNT_ID",                                         null: false
    t.uuid     "PARENT_ORG_GL_ACCOUNT"
    t.uuid     "PARTY_ID"
    t.uuid     "PRODUCT_ID"
    t.uuid     "PRODUCT_CATEGORY_ID"
    t.uuid     "TAX_ITEM_ID"
    t.uuid     "PAYMENT_METHOD_TYPE_ID"
    t.decimal  "ALLOCATION_PERCENTAGE",     precision: 6, scale: 3
    t.datetime "EFFECTIVE_DATE",                                                    null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_ORGANIZATION_GL_ACCOUNT", ["ROW_ID"], name: "IX_ROW_ID_T_ORGANIZATION_GL_ACCOUNT"

  create_table "T_ORGANIZATION_GL_ACCOUNT_BALANCE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP"
    t.uuid     "ACCOUNTING_PERIOD_ID",                                          null: false
    t.uuid     "ORGANIZATION_GL_ACCOUNT_ID",                                    null: false
    t.decimal  "AMOUNT",                               precision: 19, scale: 4, null: false
    t.char     "DEBIT_CREDIT_FLAG",          limit: 1,                          null: false
  end

  add_index "T_ORGANIZATION_GL_ACCOUNT_BALANCE", ["ROW_ID"], name: "IX_ROW_ID_T_ORGANIZATION_GL_ACCOUNT_BALANCE"

  create_table "T_ORGANIZATION_OPERATING_HOURS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PARTY_ID",                              null: false
    t.uuid     "OPERATING_HOURS_ID",                    null: false
  end

  add_index "T_ORGANIZATION_OPERATING_HOURS", ["ROW_ID"], name: "IX_ROW_ID_T_ORGANIZATION_OPERATING_HOURS"

  create_table "T_ORGANIZATION_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_ORGANIZATION_ROLE", ["ROW_ID"], name: "IX_ROW_ID_T_ORGANIZATION_ROLE"

  create_table "T_OUTGOING_EMAIL", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.text     "SUBJECT",               limit: 2147483647
    t.text     "BODY",                  limit: 2147483647
    t.text     "RECIPIENT",             limit: 2147483647
    t.text     "SENDER",                limit: 2147483647
    t.boolean  "IS_SENT",                                  default: false, null: false
    t.binary   "ATTACHMENT",            limit: 2147483647
    t.uuid     "RECIPIENT_PARTY_ID"
  end

  add_index "T_OUTGOING_EMAIL", ["ROW_ID"], name: "IX_ROW_ID_T_OUTGOING_EMAIL"

  create_table "T_PAPER_SIZE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                        null: false
    t.uuid     "CREATION_USER_ID",                                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                     null: false
    t.boolean  "IS_DELETED",                                                default: false, null: false
    t.varchar  "NAME",                  limit: 50,                                          null: false
    t.decimal  "HEIGHT",                           precision: 10, scale: 3,                 null: false
    t.decimal  "WIDTH",                            precision: 10, scale: 3,                 null: false
  end

  add_index "T_PAPER_SIZE", ["ROW_ID"], name: "IX_ROW_ID_T_PAPER_SIZE"

  create_table "T_PARKING_PERMIT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                            null: false
    t.boolean "IS_SERIAL_NUMBER_FIELD_VISIBLE",                default: false, null: false
    t.boolean "IS_TRANSPONDER_NUMBER_FIELD_VISIBLE",           default: false, null: false
    t.boolean "IS_START_DATE_FIELD_VISIBLE",                   default: false, null: false
    t.boolean "IS_END_DATE_FIELD_VISIBLE",                     default: false, null: false
    t.boolean "IS_VEHICLE_MAKE_FIELD_VISIBLE",                 default: false, null: false
    t.boolean "IS_VEHICLE_MODEL_FIELD_VISIBLE",                default: false, null: false
    t.boolean "IS_VEHICLE_COLOR_FIELD_VISIBLE",                default: false, null: false
    t.boolean "IS_VEHICLE_LICENSE_PLATE_NUMBER_FIELD_VISIBLE", default: false, null: false
    t.boolean "IS_VEHICLE_YEAR_FIELD_VISIBLE",                 default: false, null: false
  end

  add_index "T_PARKING_PERMIT", ["ROW_ID"], name: "IX_ROW_ID_T_PARKING_PERMIT"

  create_table "T_PARKING_PERMIT_INSTANCE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                      null: false
    t.uuid     "CREATION_USER_ID",                                        null: false
    t.datetime "CREATION_TIMESTAMP",                                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                   null: false
    t.boolean  "IS_DELETED",                              default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                          null: false
    t.datetime "UNTIL_DATE"
    t.string   "ID_NUMBER",                    limit: 50,                 null: false
    t.uuid     "PARKING_PERMIT_ID",                                       null: false
    t.uuid     "ORDER_ITEM_ID"
    t.uuid     "CUSTOMER_PARTY_ID"
    t.string   "SERIAL_NUMBER",                limit: 50
    t.string   "TRANSPONDER_NUMBER",           limit: 50
    t.datetime "START_DATE"
    t.datetime "END_DATE"
    t.string   "VEHICLE_MAKE",                 limit: 50
    t.string   "VEHICLE_MODEL",                limit: 50
    t.string   "VEHICLE_COLOR",                limit: 50
    t.string   "VEHICLE_LICENSE_PLATE_NUMBER", limit: 50
    t.string   "VEHICLE_YEAR",                 limit: 50
  end

  add_index "T_PARKING_PERMIT_INSTANCE", ["ROW_ID"], name: "IX_ROW_ID_T_PARKING_PERMIT_INSTANCE"

  create_table "T_PARTY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                                        null: false
    t.uuid    "PARTY_TYPE_CV"
    t.uuid    "LANGUAGE_ID"
    t.varchar "LEGACY_ID",            limit: 50
    t.decimal "CREDIT_LIMIT",                     precision: 18, scale: 4
    t.boolean "IS_CREDIT_ON_HOLD",                                         default: false, null: false
    t.uuid    "CREDIT_TERMS_TYPE_CV"
    t.string  "IMAGE_FILE_NAME",      limit: 100
    t.boolean "IS_DELETED",                                                default: false
    t.boolean "IS_PERSON"
  end

  add_index "T_PARTY", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY"

  create_table "T_PARTY_CONTACT_MECHANISM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PARTY_ID",                              null: false
    t.uuid     "CONTACT_MECHANISM_ID",                  null: false
    t.boolean  "IS_OWNER",              default: true,  null: false
  end

  add_index "T_PARTY_CONTACT_MECHANISM", ["CONTACT_MECHANISM_ID"], name: "T_PARTY_CONTACT_MECHANISM_CONTACT_MECHANISM_ID"
  add_index "T_PARTY_CONTACT_MECHANISM", ["IS_DELETED", "CONTACT_MECHANISM_ID", "IS_OWNER"], name: "Index_PartyContactMechanismIsDeletedContactMechanismIdIsOwnerPartyId"
  add_index "T_PARTY_CONTACT_MECHANISM", ["IS_DELETED", "IS_OWNER"], name: "Index_PartyContactMechanismIsDeletedIsOwnerPartyIdContactMechanismId"
  add_index "T_PARTY_CONTACT_MECHANISM", ["IS_DELETED", "PARTY_ID"], name: "IX_T_PARTY_CONTACT_MECHANISM_IS_DELETED_PARTY_ID"
  add_index "T_PARTY_CONTACT_MECHANISM", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY_CONTACT_MECHANISM"

  create_table "T_PARTY_EXTERNAL_ID", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.uuid     "PARTY_ID",                                         null: false
    t.string   "EXTERNAL_ID",           limit: 50,                 null: false
    t.string   "VERSION",               limit: 50
    t.uuid     "TYPE_CV"
    t.uuid     "EXTERNAL_ID_TYPE_ID"
  end

  add_index "T_PARTY_EXTERNAL_ID", ["EXTERNAL_ID"], name: "T_PARTY_EXTERNAL_ID_EXTERNAL_ID"
  add_index "T_PARTY_EXTERNAL_ID", ["IS_DELETED", "EXTERNAL_ID"], name: "Index_PartyExternalIdIsDeletedExternalId"
  add_index "T_PARTY_EXTERNAL_ID", ["IS_DELETED", "PARTY_ID", "TYPE_CV"], name: "IX_T_PARTY_EXTERNAL_ID_IS_DELETED_PARTY_ID_TYPE_CV"
  add_index "T_PARTY_EXTERNAL_ID", ["IS_DELETED"], name: "T_PARTY_EXTERNAL_ID_IS_DELETED_PARTY_ID_EXTERNAL_ID"
  add_index "T_PARTY_EXTERNAL_ID", ["PARTY_ID"], name: "Index_PartyExternalIdPartyId"
  add_index "T_PARTY_EXTERNAL_ID", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY_EXTERNAL_ID"
  add_index "T_PARTY_EXTERNAL_ID", ["TYPE_CV"], name: "T_PARTY_EXTERNAL_ID_TYPE_CV_PARTY_ID"

  create_table "T_PARTY_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PARTY_ID",                              null: false
    t.uuid     "FACILITY_ID",                           null: false
    t.uuid     "FACILITY_ROLE_TYPE_CV",                 null: false
  end

  add_index "T_PARTY_FACILITY", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY_FACILITY"

  create_table "T_PARTY_QUALIFICATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "QUALIFICATION_TYPE_ID",                 null: false
    t.uuid     "PARTY_ID",                              null: false
  end

  add_index "T_PARTY_QUALIFICATION", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY_QUALIFICATION"

  create_table "T_PARTY_RELATIONSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                    null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "FROM_PARTY_ROLE_ID",                                null: false
    t.uuid     "TO_PARTY_ROLE_ID"
    t.uuid     "PARTY_RELATIONSHIP_TYPE_ID",                        null: false
    t.uuid     "PARTY_RELATIONSHIP_STATUS_TYPE_CV"
  end

  add_index "T_PARTY_RELATIONSHIP", ["FROM_PARTY_ROLE_ID", "PARTY_RELATIONSHIP_TYPE_ID"], name: "T_PARTY_RELATIONSHIP_FROM_PARTY_ROLE_ID_PARTY_RELATIONSHIP_TYPE_ID"
  add_index "T_PARTY_RELATIONSHIP", ["IS_DELETED", "TO_PARTY_ROLE_ID"], name: "T_PARTY_RELATIONSHIP_IS_DELETED_TO_PARTY_ROLE_ID"
  add_index "T_PARTY_RELATIONSHIP", ["IS_DELETED", "UNTIL_DATE", "FROM_PARTY_ROLE_ID", "PARTY_RELATIONSHIP_TYPE_ID"], name: "T_PARTY_RELATIONSHIP_IS_DELETED_UNTIL_DATE_FROM_PARTY_ROLE_ID_PARTY_RELATIONSHIP_TYPE_ID"
  add_index "T_PARTY_RELATIONSHIP", ["IS_DELETED"], name: "T_PARTY_RELATIONSHIP_IS_DELETED"
  add_index "T_PARTY_RELATIONSHIP", ["PARTY_RELATIONSHIP_TYPE_ID"], name: "T_PARTY_RELATIONSHIP_PARTY_RELATIONSHIP_TYPE_ID"
  add_index "T_PARTY_RELATIONSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY_RELATIONSHIP"

  create_table "T_PARTY_RELATIONSHIP_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                  null: false
    t.uuid     "CREATION_USER_ID",                                    null: false
    t.datetime "CREATION_TIMESTAMP",                                  null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                 null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                               null: false
    t.boolean  "IS_DELETED",                          default: false, null: false
    t.varchar  "NAME",                    limit: 50,                  null: false
    t.varchar  "DESCRIPTION",             limit: 100
    t.uuid     "FROM_PARTY_ROLE_TYPE_CV",                             null: false
    t.uuid     "TO_PARTY_ROLE_TYPE_CV",                               null: false
  end

  add_index "T_PARTY_RELATIONSHIP_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY_RELATIONSHIP_TYPE"

  create_table "T_PARTY_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PARTY_ID",                              null: false
    t.uuid     "PARTY_ROLE_TYPE_CV",                    null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_PARTY_ROLE", ["IS_DELETED", "PARTY_ID", "PARTY_ROLE_TYPE_CV", "UNTIL_DATE"], name: "IX_T_PARTY_ROLE_IS_DELETED"
  add_index "T_PARTY_ROLE", ["IS_DELETED", "PARTY_ROLE_TYPE_CV", "UNTIL_DATE"], name: "T_PARTY_ROLE_IS_DELETED_PARTY_ROLE_TYPE_CV_UNTIL_DATE"
  add_index "T_PARTY_ROLE", ["PARTY_ID", "PARTY_ROLE_TYPE_CV", "UNTIL_DATE"], name: "T_PARTY_ROLE_PARTY_ID_PARTY_ROLE_TYPE_CV_UNTIL_DATE"
  add_index "T_PARTY_ROLE", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY_ROLE"

  create_table "T_PARTY_SEARCH_TEXT", primary_key: "ID", force: :cascade do |t|
    t.string  "FIRST_NAME",           limit: 50
    t.string  "MIDDLE_NAME",          limit: 50
    t.string  "LAST_NAME",            limit: 100
    t.binary  "IMAGE_DATA",           limit: 2147483647
    t.string  "ID_NUMBER",            limit: 50
    t.text    "ADDRESSES",            limit: 2147483647
    t.boolean "IS_PERSON",                               default: true
    t.uuid    "GENDER_CV"
    t.string  "EMAIL_ADDRESS_1",      limit: 100
    t.string  "EMAIL_ADDRESS_2",      limit: 100
    t.string  "EMAIL_ADDRESS_3",      limit: 100
    t.string  "EXTERNAL_ID_NUMBER_1", limit: 50
    t.string  "EXTERNAL_ID_NUMBER_2", limit: 50
    t.string  "EXTERNAL_ID_NUMBER_3", limit: 50
    t.string  "PHONE_NUMBER_1",       limit: 50
    t.string  "PHONE_NUMBER_2",       limit: 50
    t.string  "PHONE_NUMBER_3",       limit: 50
    t.boolean "EMAIL_OPT_IN",                            default: false, null: false
  end

  add_index "T_PARTY_SEARCH_TEXT", ["LAST_NAME", "FIRST_NAME", "EXTERNAL_ID_NUMBER_1", "EXTERNAL_ID_NUMBER_2", "EMAIL_ADDRESS_1", "PHONE_NUMBER_1", "ID"], name: "IX_T_PARTY_SEARCH_TEXT_Clustered", unique: true

  create_table "T_PARTY_WAIVER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                          null: false
    t.uuid     "CREATION_USER_ID",                                            null: false
    t.datetime "CREATION_TIMESTAMP",                                          null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                         null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                       null: false
    t.boolean  "IS_DELETED",                                  default: false, null: false
    t.uuid     "PARTY_ID",                                                    null: false
    t.uuid     "WAIVER_ID",                                                   null: false
    t.datetime "SIGNED_TIMESTAMP"
    t.string   "ACCEPTANCE_TEXT",          limit: 300
    t.datetime "EFFECTIVE_DATE",                                              null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "CONTEXT_TYPE_CV"
    t.uuid     "AGREEMENT_ID"
    t.uuid     "PRODUCT_ID"
    t.uuid     "COMPUTER_ID"
    t.boolean  "IS_RENEWAL",                                  default: false, null: false
    t.uuid     "REGISTRATION_ID"
    t.text     "SIGNATURE_CAPTURE_DATA",   limit: 2147483647
    t.uuid     "STATUS_TYPE_CV"
    t.uuid     "ORDER_ITEM_ID"
    t.uuid     "EQUIPMENT_TRANSACTION_ID"
    t.binary   "WAIVER_TEXT",              limit: 2147483647
  end

  add_index "T_PARTY_WAIVER", ["ROW_ID"], name: "IX_ROW_ID_T_PARTY_WAIVER"

  create_table "T_PASSWORD_POLICY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.uuid     "USER_ACCOUNT_TYPE_CV",                             null: false
    t.boolean  "IS_DIGIT_REQUIRED",                default: false, null: false
    t.boolean  "IS_LOWER_CASE_REQUIRED",           default: false, null: false
    t.boolean  "IS_UPPER_CASE_REQUIRED",           default: false, null: false
    t.boolean  "IS_NON_ALPHA_REQUIRED",            default: false, null: false
    t.integer  "MIN_LENGTH",             limit: 4,                 null: false
    t.boolean  "IS_USERNAME_ALLOWED",              default: false, null: false
  end

  add_index "T_PASSWORD_POLICY", ["ROW_ID"], name: "IX_ROW_ID_T_PASSWORD_POLICY"

  create_table "T_PASSWORD_RESET_REQUEST", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.string   "EMAIL_ADDRESS",       limit: 100,                 null: false
    t.integer  "RETURN_CODE",         limit: 4,   default: 0
    t.uuid     "USER_ID"
    t.boolean  "IS_INTERNAL_ACCOUNT",             default: false
    t.uuid     "CONFIRMATION_ID"
    t.datetime "CONFIRMATION_DATE"
  end

  add_index "T_PASSWORD_RESET_REQUEST", ["ROW_ID"], name: "IX_ROW_ID_T_PASSWORD_RESET_REQUEST"

  create_table "T_PAYMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                        null: false
    t.uuid     "CREATION_USER_ID",                                                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                     null: false
    t.boolean  "IS_DELETED",                                                                default: false, null: false
    t.uuid     "PAYOR_PARTY_ID"
    t.uuid     "RECEIVER_PARTY_ID"
    t.uuid     "PAYMENT_METHOD_TYPE_ID",                                                                    null: false
    t.datetime "EFFECTIVE_DATE",                                                                            null: false
    t.decimal  "AMOUNT",                                           precision: 18, scale: 2,                 null: false
    t.decimal  "CASH_PAID_OUT",                                    precision: 18, scale: 2
    t.varchar  "COMMENT",                       limit: 150
    t.uuid     "TYPECODE"
    t.boolean  "IS_CREDIT_CHARGE",                                                          default: false, null: false
    t.varchar  "DESCRIPTION",                   limit: 150
    t.varchar  "RESPONSECODE",                  limit: 3
    t.varchar  "AUTHORIZATIONCODE",             limit: 20
    t.string   "AUTHORIZATION_MESSAGE",         limit: 1000
    t.string   "TRANSACTION_ERROR_MESSAGE",     limit: 1000
    t.varchar  "TRANSACTIONNUMBER",             limit: 20
    t.boolean  "IS_TRANSACTION_APPROVED",                                                   default: false, null: false
    t.varchar  "TRANSACTIONTYPE",               limit: 2
    t.varchar  "ACCOUNTTYPE",                   limit: 2
    t.varchar  "CARDTYPE",                      limit: 2
    t.varchar  "BANKREFERENCENUMBER",           limit: 20
    t.varchar  "ISOCODE",                       limit: 2
    t.datetime "CHEQUE_DATE"
    t.string   "CHEQUE_NUMBER",                 limit: 50
    t.varchar  "CHEQUE_TRANSIT_NUMBER",         limit: 5
    t.varchar  "CHEQUE_INSTITUTION_NUMBER",     limit: 3
    t.varchar  "CHEQUE_ACCOUNT_NUMBER",         limit: 12
    t.string   "PAYMENT_NUMBER",                limit: 100,                                 default: "0",   null: false
    t.datetime "VOID_TIMESTAMP"
    t.boolean  "IS_VOID",                                                                   default: false, null: false
    t.uuid     "VOIDED_BY_USER_ID"
    t.string   "TRANS_REF_ID",                  limit: 150
    t.string   "TRANS_TOKEN_ID",                limit: 150
    t.string   "BANK_ROUTING_TRANSIT_NUMBER",   limit: 50
    t.string   "BANK_INSTITUTION_NUMBER",       limit: 50
    t.text     "BANK_ACCOUNT_NUMBER",           limit: 2147483647
    t.uuid     "COMPUTER_ID"
    t.uuid     "REVERSED_PAYMENT_ID"
    t.text     "RECEIPT_TEXT",                  limit: 2147483647
    t.text     "SHIFT4_SIGNATURE_CAPTURE_DATA", limit: 2147483647
    t.boolean  "PRINT_SIGNATURE_LINE",                                                      default: false, null: false
    t.string   "CARD_MASK",                     limit: 50
    t.text     "MERCHANT_RECEIPT_TEXT",         limit: 2147483647
    t.text     "CUSTOMER_RECEIPT_TEXT",         limit: 2147483647
    t.integer  "CARD_EXPIRATION_MONTH",         limit: 4
    t.integer  "CARD_EXPIRATION_YEAR",          limit: 4
    t.uuid     "SAVED_PAYMENT_INFO_ID"
    t.uuid     "STATUS_CV"
    t.string   "BLACKBOARD_TRACK2_DATA",        limit: 50
    t.string   "BLACKBOARD_MANUAL_PAYMENT_ID",  limit: 50
  end

  add_index "T_PAYMENT", ["IS_DELETED", "EFFECTIVE_DATE"], name: "T_PAYMENT_IS_DELETED_EFFECTIVE_DATE"
  add_index "T_PAYMENT", ["IS_DELETED"], name: "T_PAYMENT_IS_DELETED"
  add_index "T_PAYMENT", ["IS_VOID", "CREATION_TIMESTAMP"], name: "T_PAYMENT_IS_VOID_CREATION_TIMESTAMP"
  add_index "T_PAYMENT", ["REVERSED_PAYMENT_ID"], name: "T_PAYMENT_REVERSED_PAYMENT_ID"
  add_index "T_PAYMENT", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT"

  create_table "T_PAYMENT_ACCOUNTING_TRANSACTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "TRANSACTION_ID", null: false
    t.uuid "PAYMENT_ID",     null: false
  end

  add_index "T_PAYMENT_ACCOUNTING_TRANSACTION", ["PAYMENT_ID"], name: "T_PAYMENT_ACCOUNTING_TRANSACTION_PAYMENT_ID_TRANSACTION_ID"
  add_index "T_PAYMENT_ACCOUNTING_TRANSACTION", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_ACCOUNTING_TRANSACTION"

  create_table "T_PAYMENT_APPLICATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                             null: false
    t.uuid     "CREATION_USER_ID",                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                          null: false
    t.boolean  "IS_DELETED",                                     default: false, null: false
    t.uuid     "INVOICE_ID"
    t.uuid     "PAYMENT_ID",                                                     null: false
    t.uuid     "BILLING_ACCOUNT_ID"
    t.decimal  "AMOUNT_APPLIED",        precision: 18, scale: 2,                 null: false
  end

  add_index "T_PAYMENT_APPLICATION", ["BILLING_ACCOUNT_ID", "AMOUNT_APPLIED"], name: "T_PAYMENT_APPLICATION_BILLING_ACCOUNT_ID_AMOUNT_APPLIED"
  add_index "T_PAYMENT_APPLICATION", ["INVOICE_ID"], name: "T_PAYMENT_APPLICATION_INVOICE_ID"
  add_index "T_PAYMENT_APPLICATION", ["IS_DELETED", "INVOICE_ID"], name: "IX_T_PAYMENT_APPLICATION_IS_DELETED_INVOICE_ID"
  add_index "T_PAYMENT_APPLICATION", ["IS_DELETED"], name: "IX_T_PAYMENT_APPLICATION_IS_DELETED"
  add_index "T_PAYMENT_APPLICATION", ["PAYMENT_ID"], name: "T_PAYMENT_APPLICATION_PAYMENT_ID"
  add_index "T_PAYMENT_APPLICATION", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_APPLICATION"

  create_table "T_PAYMENT_DEVICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "COMPUTER_ID",                           null: false
    t.uuid     "TYPE_CV",                               null: false
    t.boolean  "IS_DEVICE_ENABLED",     default: false, null: false
  end

  add_index "T_PAYMENT_DEVICE", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_DEVICE"

  create_table "T_PAYMENT_METHOD_ASSIGNMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PAYMENT_METHOD_ID",                     null: false
    t.uuid     "ORGANIZATION_ID"
    t.uuid     "PRODUCT_ID"
    t.uuid     "PAYMENT_PROVIDER_ID"
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_PAYMENT_METHOD_ASSIGNMENT", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_METHOD_ASSIGNMENT"

  create_table "T_PAYMENT_METHOD_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                           null: false
    t.uuid     "CREATION_USER_ID",                                             null: false
    t.datetime "CREATION_TIMESTAMP",                                           null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                          null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                        null: false
    t.boolean  "IS_DELETED",                                   default: false, null: false
    t.uuid     "PAYMENT_TYPE_CV",                                              null: false
    t.boolean  "ALLOW_CASH_BACK",                              default: false, null: false
    t.boolean  "ALLOW_AT_POS",                                 default: false, null: false
    t.boolean  "EMPLOYEE_USE_ONLY",                            default: false, null: false
    t.varchar  "NAME",                             limit: 50,                  null: false
    t.varchar  "DESCRIPTION",                      limit: 150
    t.boolean  "IS_SYSTEM",                                    default: false, null: false
    t.boolean  "OPEN_CASH_DRAWER",                             default: true,  null: false
    t.boolean  "PRINT_SIGNATURE_LINE",                         default: false, null: false
    t.boolean  "IS_FOR_REFUND_ONLY",                           default: false, null: false
    t.boolean  "ALLOW_FOR_SALES",                              default: false, null: false
    t.boolean  "ALLOW_FOR_REFUNDS",                            default: false, null: false
    t.boolean  "IS_AUTH_CODE_INPUT_ENABLED",                   default: false, null: false
    t.boolean  "IS_AUTH_CODE_INPUT_REQUIRED",                  default: false, null: false
    t.integer  "ORDINAL_POSITION",                 limit: 4,   default: 0,     null: false
    t.uuid     "PAYMENT_INTEGRATION_TYPE_CV"
    t.string   "BLACKBOARD_TERMINAL_NUMBER",       limit: 8
    t.string   "BLACKBOARD_TENDER_NUMBER",         limit: 4
    t.string   "BLACKBOARD_ENCRYPTION_KEY",        limit: 50
    t.uuid     "PAYMENT_PROVIDER_PAYMENT_TYPE_ID"
  end

  add_index "T_PAYMENT_METHOD_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_METHOD_TYPE"

  create_table "T_PAYMENT_METHOD_TYPE_MAPPING", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "INTERNAL_PAYMENT_METHOD_TYPE_ID",                 null: false
    t.uuid     "PROVIDER_PAYMENT_METHOD_TYPE_ID",                 null: false
    t.uuid     "PAYMENT_PROVIDER_ID"
  end

  add_index "T_PAYMENT_METHOD_TYPE_MAPPING", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_METHOD_TYPE_MAPPING"

  create_table "T_PAYMENT_PROCESSING_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                 null: false
    t.uuid     "CREATION_USER_ID",                                                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                              null: false
    t.boolean  "IS_DELETED",                                                         default: false, null: false
    t.uuid     "PAYMENT_PROVIDER_CV"
    t.string   "PAYMENT_PROVIDER_URL",   limit: 300
    t.string   "CARD_TYPE",              limit: 100
    t.uuid     "PAYMENT_METHOD_TYPE_ID"
    t.string   "AUTHORIZATION_MESSAGE",  limit: 500
    t.string   "AUTHORIZATION_NUMBER",   limit: 50
    t.string   "ERROR_MESSAGE",          limit: 500
    t.boolean  "IS_AUTHORIZED",                                                                      null: false
    t.boolean  "IS_CANCELLATION"
    t.decimal  "PAYMENT_AMOUNT",                            precision: 18, scale: 2,                 null: false
    t.string   "CUSTOMER_FIRST_NAME",    limit: 50
    t.string   "CUSTOMER_LAST_NAME",     limit: 50
    t.uuid     "CUSTOMER_ID"
    t.string   "PAYMENT_PROCESSOR_NAME", limit: 100
    t.string   "ORDER_NUMBER",           limit: 50
    t.text     "COMMENTS",               limit: 2147483647
    t.string   "PROCESSOR_TRANS_TIME",   limit: 50
    t.string   "PROCESSOR_ORDER_ID",     limit: 50
    t.string   "CARD_MASK",              limit: 50
    t.string   "TRANS_REF_NUMBER",       limit: 50
    t.string   "TRANSACTION_TYPE",       limit: 50
    t.string   "PAYMENT_TYPE",           limit: 50
    t.uuid     "ORDER_ID"
    t.string   "PROCESSOR_RETURN_CODE",  limit: 50
    t.string   "NOTIFICATION_SOURCE",    limit: 50
    t.string   "PAYMENT_NUMBER",         limit: 50
    t.boolean  "IS_RECURRING_PAYMENT",                                               default: false, null: false
    t.boolean  "IS_INVOICE_PAYMENT",                                                 default: false, null: false
  end

  add_index "T_PAYMENT_PROCESSING_LOG", ["IS_DELETED", "IS_AUTHORIZED", "ORDER_ID"], name: "IX_T_PAYMENT_PROCESSING_LOG_IS_DELETED_IS_AUTHORIZED_ORDER_ID"
  add_index "T_PAYMENT_PROCESSING_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_PROCESSING_LOG"

  create_table "T_PAYMENT_PROVIDER_PAYMENT_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "PAYMENT_PROVIDER_CV",                               null: false
    t.string   "PAYMENT_TYPE_CODE",     limit: 50,                  null: false
    t.string   "PAYMENT_TYPE_DESC",     limit: 150,                 null: false
  end

  add_index "T_PAYMENT_PROVIDER_PAYMENT_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_PROVIDER_PAYMENT_TYPE"

  create_table "T_PAYMENT_PROVIDER_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                         null: false
    t.uuid     "CREATION_USER_ID",                                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                      null: false
    t.boolean  "IS_DELETED",                                                 default: false, null: false
    t.uuid     "PAYMENT_PROVIDER_CV",                                                        null: false
    t.text     "SERVICE_URL",                             limit: 2147483647
    t.text     "SERVICE_SERIAL_NUMBER",                   limit: 2147483647
    t.boolean  "SERVICE_ADDRESS_VERIFICATION_IS_ENABLED",                    default: false
    t.text     "SERVICE_USERNAME",                        limit: 2147483647
    t.text     "SERVICE_PASSWORD",                        limit: 2147483647
    t.boolean  "SERVICE_IS_ENABLED_FOR_ONLINE_SALES",                        default: false
    t.boolean  "SERVICE_IS_ENABLED_FOR_POS",                                 default: false
  end

  add_index "T_PAYMENT_PROVIDER_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_PROVIDER_SETTINGS"

  create_table "T_PAYMENT_STATUS_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",               null: false
    t.uuid     "CREATION_USER_ID", null: false
    t.datetime "VALID_UNTIL",      null: false
    t.uuid     "STATUS_CV",        null: false
  end

  add_index "T_PAYMENT_STATUS_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_STATUS_HISTORY"

  create_table "T_PAYMENT_TERMINAL", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.varchar  "COM_PORT",              limit: 10,                 null: false
    t.varchar  "PAYMENT_HOST",          limit: 50,                 null: false
    t.uuid     "COMPUTER_ID",                                      null: false
  end

  add_index "T_PAYMENT_TERMINAL", ["ROW_ID"], name: "IX_ROW_ID_T_PAYMENT_TERMINAL"

  create_table "T_PENDING_INVOICE_PAYMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                       null: false
    t.datetime "EFFECTIVE_DATE",                           null: false
    t.datetime "UNTIL_DATE"
    t.string   "PAYMENT_NUMBER", limit: 100, default: "a", null: false
  end

  add_index "T_PENDING_INVOICE_PAYMENT", ["ROW_ID"], name: "IX_ROW_ID_T_PENDING_INVOICE_PAYMENT"

  create_table "T_PENDING_WEB_ACCOUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid      "ID",                                                 null: false
    t.uuid      "CREATION_USER_ID",                                   null: false
    t.datetime  "CREATION_TIMESTAMP",                                 null: false
    t.uuid      "LAST_UPDATE_USER_ID",                                null: false
    t.datetime  "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean   "IS_DELETED",                         default: false, null: false
    t.datetime  "EFFECTIVE_DATE",                                     null: false
    t.datetime  "UNTIL_DATE",                                         null: false
    t.varchar   "USERNAME",               limit: 100,                 null: false
    t.varbinary "PASSWORD",               limit: 512,                 null: false
    t.string    "FIRST_NAME",             limit: 50,                  null: false
    t.string    "LAST_NAME",              limit: 50,                  null: false
    t.string    "EMAIL_ADDRESS",          limit: 100,                 null: false
    t.boolean   "ALLOW_EMAIL_MARKETING",              default: false, null: false
    t.string    "EXTERNAL_ID_NUMBER",     limit: 50
    t.datetime  "BIRTH_DATE"
    t.uuid      "GENDER_CV"
    t.varchar   "PHONE_NUMBER_HOME",      limit: 12
    t.varchar   "PHONE_NUMBER_WORK",      limit: 12
    t.varchar   "PHONE_NUMBER_MOBILE",    limit: 12
    t.string    "ADDRESS_LINE_1",         limit: 50
    t.string    "ADDRESS_LINE_2",         limit: 50
    t.string    "CITY",                   limit: 50
    t.uuid      "PROVINCE_ID"
    t.uuid      "COUNTRY_ID"
    t.nchar     "POSTAL_CODE",            limit: 10
    t.datetime  "ACTIVATION_TIMESTAMP"
    t.integer   "ACTIVATION_RETURN_CODE", limit: 4
    t.boolean   "IS_NEW_PERSON"
    t.uuid      "PERSON_ID"
  end

  add_index "T_PENDING_WEB_ACCOUNT", ["ROW_ID"], name: "IX_ROW_ID_T_PENDING_WEB_ACCOUNT"

  create_table "T_PERSON", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                     null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                                     null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                  null: false
    t.boolean  "IS_DELETED",                                             default: false, null: false
    t.datetime "BIRTH_DATE"
    t.uuid     "GENDER_CV"
    t.uuid     "TITLE_CV"
    t.uuid     "SUFFIX_CV"
    t.string   "FIRST_NAME",                          limit: 50
    t.varchar  "MIDDLE_NAME",                         limit: 50
    t.string   "LAST_NAME",                           limit: 50
    t.varchar  "CLASS_INFORMATION",                   limit: 50
    t.varchar  "GOES_BY_NAME",                        limit: 50
    t.varchar  "DRIVERS_LICENSE",                     limit: 25
    t.uuid     "CITIZENSHIP_CV"
    t.uuid     "MARITAL_STATUS_CV"
    t.binary   "BIOMETRIC_TEMPLATE_DATA",             limit: 2147483647
    t.datetime "BIOMETRIC_TEMPLATE_DATA_LAST_UPDATE"
    t.integer  "ID_CARD_VERSION_NUMBER",              limit: 4
    t.text     "MEDICAL_INFORMATION",                 limit: 2147483647
    t.text     "SPECIAL_NEEDS_INFORMATION",           limit: 2147483647
  end

  add_index "T_PERSON", ["IS_DELETED"], name: "T_PERSON_IS_DELETED_BIRTH_DATE"
  add_index "T_PERSON", ["ROW_ID"], name: "IX_ROW_ID_T_PERSON"

  create_table "T_PERSON_ID_CARD", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                   null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "PARTY_ID",                                         null: false
    t.uuid     "ID_CARD_TEMPLATE_ID"
    t.datetime "PRINTED_TIMESTAMP"
    t.string   "CARD_ID_NUMBER",        limit: 50
    t.string   "BARCODE_NUMBER",        limit: 50
    t.string   "BARCODE_VERSION",       limit: 50
  end

  add_index "T_PERSON_ID_CARD", ["ROW_ID"], name: "IX_ROW_ID_T_PERSON_ID_CARD"

  create_table "T_PERSON_MERGE_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "MASTER_PARTY_ID",                                          null: false
    t.text     "OTHER_PARTY_IDS",       limit: 2147483647,                 null: false
  end

  add_index "T_PERSON_MERGE_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_PERSON_MERGE_HISTORY"

  create_table "T_PERSON_NAME", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.uuid     "PERSON_ID",                                        null: false
    t.varchar  "NAME",                  limit: 50,                 null: false
    t.uuid     "NAME_TYPE_CV",                                     null: false
    t.datetime "EFFECTIVE_DATE",                                   null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_PERSON_NAME", ["ROW_ID"], name: "IX_ROW_ID_T_PERSON_NAME"

  create_table "T_PERSON_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_PERSON_ROLE", ["ROW_ID"], name: "IX_ROW_ID_T_PERSON_ROLE"

  create_table "T_PERSON_SHALA_ENROLLED", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PARTY_ID",                              null: false
  end

  add_index "T_PERSON_SHALA_ENROLLED", ["ROW_ID"], name: "IX_ROW_ID_T_PERSON_SHALA_ENROLLED"

  create_table "T_POS_HOTKEY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "POS_HOTKEY_PROFILE_ID",                             null: false
    t.uuid     "PRODUCT_ID"
    t.uuid     "PRODUCT_CATEGORY_ID"
    t.integer  "ROW_INDEX",             limit: 4
    t.integer  "COLUMN_INDEX",          limit: 4
    t.varchar  "HOTKEY_NAME",           limit: 150
    t.integer  "PAGE",                  limit: 4
  end

  add_index "T_POS_HOTKEY", ["ROW_ID"], name: "IX_ROW_ID_T_POS_HOTKEY"

  create_table "T_POS_HOTKEY_PROFILE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.varchar  "NAME",                   limit: 100,                 null: false
    t.integer  "PAGE_1_COLUMNS",         limit: 4
    t.integer  "PAGE_1_ROWS",            limit: 4
    t.boolean  "PAGE_1_ALLOW_SCROLLING",             default: true,  null: false
    t.boolean  "PAGE_2_ALLOW_SCROLLING",             default: true,  null: false
    t.integer  "PAGE_2_ROWS",            limit: 4
    t.integer  "PAGE_2_COLUMNS",         limit: 4
    t.uuid     "TYPE_CV"
  end

  add_index "T_POS_HOTKEY_PROFILE", ["ROW_ID"], name: "IX_ROW_ID_T_POS_HOTKEY_PROFILE"

  create_table "T_POS_HOTKEY_PROFILE_ASSIGNMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "COMPUTER_ID",                           null: false
    t.uuid     "POS_HOTKEY_PROFILE_ID",                 null: false
  end

  add_index "T_POS_HOTKEY_PROFILE_ASSIGNMENT", ["ROW_ID"], name: "IX_ROW_ID_T_POS_HOTKEY_PROFILE_ASSIGNMENT"

  create_table "T_PRICE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "AGREEMENT_ID"
  end

  add_index "T_PRICE", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE"

  create_table "T_PRICE_ASSIGNMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PARTY_ID",                              null: false
    t.uuid     "PRICE_ID",                              null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_PRICE_ASSIGNMENT", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_ASSIGNMENT"

  create_table "T_PRICE_CATEGORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                       null: false
    t.uuid     "CREATION_USER_ID",                                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                    null: false
    t.boolean  "IS_DELETED",                                               default: false, null: false
    t.varchar  "NAME",                                          limit: 50,                 null: false
    t.boolean  "IS_ACTIVE_MEMBERSHIP_REQUIRED",                                            null: false
    t.boolean  "IS_AGE_RESTRICTED",                                                        null: false
    t.uuid     "AGE_BRACKET_ID"
    t.boolean  "IS_AVAILABLE_TO_NON_MEMBERS",                              default: false, null: false
    t.boolean  "IS_AVAILABLE_TO_ANY_ACTIVE_MEMBER",                        default: false, null: false
    t.boolean  "SPECIFIC_MEMBERSHIP_ELIGIBILITY_REQUIRED",                 default: false, null: false
    t.boolean  "RELATION_TO_ACTIVE_HEAD_OF_HOUSEHOLD_REQUIRED",            default: false, null: false
    t.boolean  "IS_AVAILABLE_TO_ANY_FAMILY_MEMBER",                        default: false, null: false
    t.boolean  "IS_AVAILABLE_TO_SHALA_PARTICIPANTS",                       default: false, null: false
  end

  add_index "T_PRICE_CATEGORY", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_CATEGORY"

  create_table "T_PRICE_CATEGORY_AGE_BRACKET", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PRICE_CATEGORY_ID",                     null: false
    t.uuid     "AGE_BRACKET_ID",                        null: false
  end

  add_index "T_PRICE_CATEGORY_AGE_BRACKET", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_CATEGORY_AGE_BRACKET"

  create_table "T_PRICE_CATEGORY_FAMILY_RELATIONSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                          null: false
    t.uuid     "CREATION_USER_ID",                            null: false
    t.datetime "CREATION_TIMESTAMP",                          null: false
    t.uuid     "LAST_UPDATE_USER_ID",                         null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                       null: false
    t.boolean  "IS_DELETED",                  default: false, null: false
    t.uuid     "PRICE_CATEGORY_ID",                           null: false
    t.uuid     "FAMILY_RELATIONSHIP_TYPE_CV",                 null: false
  end

  add_index "T_PRICE_CATEGORY_FAMILY_RELATIONSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_CATEGORY_FAMILY_RELATIONSHIP"

  create_table "T_PRICE_CATEGORY_MEMBERSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PRICE_CATEGORY_ID",                     null: false
    t.uuid     "MEMBERSHIP_TYPE_ID",                    null: false
  end

  add_index "T_PRICE_CATEGORY_MEMBERSHIP", ["PRICE_CATEGORY_ID"], name: "T_PRICE_CATEGORY_MEMBERSHIP_PRICE_CATEGORY_ID"
  add_index "T_PRICE_CATEGORY_MEMBERSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_CATEGORY_MEMBERSHIP"

  create_table "T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                             null: false
    t.uuid     "CREATION_USER_ID",                               null: false
    t.datetime "CREATION_TIMESTAMP",                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                          null: false
    t.boolean  "IS_DELETED",                     default: false, null: false
    t.uuid     "PRICE_CATEGORY_ID",                              null: false
    t.uuid     "MEMBERSHIP_TYPE_ELIGIBILITY_ID",                 null: false
  end

  add_index "T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY"

  create_table "T_PRICE_COMPONENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                             null: false
    t.uuid     "CREATION_USER_ID",                                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                          null: false
    t.boolean  "IS_DELETED",                                                     default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                                                 null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "PRICE_ID"
    t.decimal  "PRICE",                                 precision: 18, scale: 4
    t.decimal  "PRICE_PERCENT",                         precision: 9,  scale: 4
    t.uuid     "PRODUCT_ID"
    t.uuid     "PRODUCT_FEATURE_ID"
    t.uuid     "AGREEMENT_ITEM_ID"
    t.uuid     "PRICING_METHOD_TYPE_CV"
    t.uuid     "UOM_ID"
    t.uuid     "RENTAL_PERIOD_ID"
    t.uuid     "SERVICE_PERIOD_ID"
    t.uuid     "ORGANIZATION_ID"
    t.uuid     "PARTY_ROLE_TYPE_CV"
    t.uuid     "PRICE_CATEGORY_ID"
    t.integer  "DURATION_QUANTITY",         limit: 4
    t.uuid     "DURATION_TYPE_CV"
    t.integer  "QUANTITY_BREAK_FROM",       limit: 4
    t.integer  "QUANTITY_BREAK_THRU",       limit: 4
    t.uuid     "ORDER_VALUE_ID"
    t.varchar  "COMMENT",                   limit: 255
    t.uuid     "GOLF_SEASON_ID"
    t.integer  "DAY_OF_WEEK",               limit: 4
    t.integer  "MINIMUM_DURATION_QUANTITY", limit: 4
    t.decimal  "ADDITIONAL_DURATION_PRICE",             precision: 18, scale: 4
    t.uuid     "BILLING_FREQUENCY_TYPE_CV"
  end

  add_index "T_PRICE_COMPONENT", ["PRICE_ID"], name: "IX_T_PRICE_COMPONENT_PRICE_ID"
  add_index "T_PRICE_COMPONENT", ["PRODUCT_ID", "DURATION_TYPE_CV", "SERVICE_PERIOD_ID", "PRICE_CATEGORY_ID", "ID"], name: "IX_T_PRICE_COMPONENT_nonclustered"
  add_index "T_PRICE_COMPONENT", ["PRODUCT_ID"], name: "IX_T_PRICE_COMPONENT_PRODUCT_ID"
  add_index "T_PRICE_COMPONENT", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_COMPONENT"

  create_table "T_PRICE_COMPONENT_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                        null: false
    t.uuid     "CREATION_USER_ID",                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                     null: false
    t.boolean  "IS_DELETED",                                default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                            null: false
    t.datetime "UNTIL_DATE"
    t.varchar  "NAME",                          limit: 50,                  null: false
    t.varchar  "DESCRIPTION",                   limit: 300
    t.uuid     "PRICE_COMPONENT_TYPE_CV",                                   null: false
    t.uuid     "PRICE_COMPONENT_VALUE_TYPE_CV"
    t.uuid     "ORGANIZATION_ID"
    t.uuid     "PARTY_TYPE_CV"
    t.uuid     "CURRENCY_MEASURE_TYPE_CV"
    t.uuid     "SALE_TYPE_CV"
    t.uuid     "PRICING_GROUP_ID"
    t.uuid     "PARENT_ID"
  end

  add_index "T_PRICE_COMPONENT_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_COMPONENT_GROUP"

  create_table "T_PRICE_TIME", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PRICE_ID",                              null: false
    t.uuid     "DAY_OF_WEEK_TYPE_CV",                   null: false
    t.datetime "START_TIME"
    t.datetime "END_TIME"
  end

  add_index "T_PRICE_TIME", ["ROW_ID"], name: "IX_ROW_ID_T_PRICE_TIME"

  create_table "T_PRODUCT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                         null: false
    t.uuid     "CREATION_USER_ID",                                                           null: false
    t.datetime "CREATION_TIMESTAMP",                                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                        null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                      null: false
    t.boolean  "IS_DELETED",                                                 default: false, null: false
    t.varchar  "NAME",                                    limit: 50
    t.text     "DESCRIPTION",                             limit: 2147483647
    t.varchar  "CODE",                                    limit: 50
    t.datetime "INTRODUCTION_DATE"
    t.datetime "DISCONTINUE_DATE"
    t.uuid     "PRODUCT_TYPE_CV",                                                            null: false
    t.boolean  "IS_MEMBERSHIP_REQUIRED",                                     default: false
    t.boolean  "IS_MEMBERSHIP_SALE_REQUIRED",                                default: false
    t.boolean  "PAYER_REQUIRED_AT_POS",                                      default: false, null: false
    t.uuid     "PRODUCT_CATEGORY_ID"
    t.uuid     "PRODUCT_BRAND_ID"
    t.uuid     "TAX_GROUP_ID"
    t.boolean  "IS_RESERVABLE",                                              default: false
    t.uuid     "ALLOWABLE_GENDERS_CV"
    t.uuid     "INVENTORY_METHOD_TYPE_CV"
    t.boolean  "IS_REFUNDABLE_WITHOUT_PROOF_OF_PURCHASE",                    default: false
    t.text     "RECEIPT_TEXT",                            limit: 2147483647
    t.boolean  "IS_AVAILABLE_AT_ALL_FACILITIES",                             default: true
    t.boolean  "IS_AVAILABLE_AT_POINT_OF_SALE",                              default: true
    t.boolean  "IS_AVAILABLE_ONLINE"
    t.boolean  "IS_OPTIONAL_ADD_ON",                                         default: false, null: false
    t.text     "WEB_DESCRIPTION",                         limit: 2147483647
    t.string   "PAYMENT_PROVIDER_ITEM_CODE",              limit: 50
    t.uuid     "PRORATE_TYPE_CV"
    t.boolean  "IS_ADD_ON",                                                  default: false, null: false
    t.string   "SHORT_WEB_DESCRIPTION",                   limit: 300
  end

  add_index "T_PRODUCT", ["IS_DELETED", "NAME", "PRODUCT_TYPE_CV", "ID"], name: "Index_ProductIsDeletedNameProductTypeCvId"
  add_index "T_PRODUCT", ["IS_DELETED", "PRODUCT_CATEGORY_ID"], name: "T_PRODUCT_IS_DELETED_PRODUCT_CATEGORY_ID"
  add_index "T_PRODUCT", ["IS_DELETED"], name: "T_PRODUCT_IS_DELETED"
  add_index "T_PRODUCT", ["PRODUCT_CATEGORY_ID"], name: "T_PRODUCT_PRODUCT_CATAEGORY_ID"
  add_index "T_PRODUCT", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT"

  create_table "T_PRODUCT_BRAND", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.varchar  "NAME",                  limit: 50,                 null: false
  end

  add_index "T_PRODUCT_BRAND", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_BRAND"

  create_table "T_PRODUCT_CATEGORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.varchar  "NAME",                  limit: 50,                   null: false
    t.uuid     "TYPE_CV",                                            null: false
    t.string   "DESCRIPTION",           limit: 1000
  end

  add_index "T_PRODUCT_CATEGORY", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_CATEGORY"

  create_table "T_PRODUCT_CATEGORY_CLASS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PRODUCT_ID",                            null: false
    t.uuid     "PRODUCT_CATEGORY_ID",                   null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
    t.boolean  "IS_PRIMARY",            default: false, null: false
    t.uuid     "TYPE_CV",                               null: false
  end

  add_index "T_PRODUCT_CATEGORY_CLASS", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_CATEGORY_CLASS"

  create_table "T_PRODUCT_CATEGORY_ROLLUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                       null: false
    t.uuid     "CREATION_USER_ID",                         null: false
    t.datetime "CREATION_TIMESTAMP",                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                    null: false
    t.boolean  "IS_DELETED",               default: false, null: false
    t.datetime "EFFECTIVE_DATE",                           null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "FROM_PRODUCT_CATEGORY_ID",                 null: false
    t.uuid     "TO_PRODUCT_CATEGORY_ID",                   null: false
  end

  add_index "T_PRODUCT_CATEGORY_ROLLUP", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_CATEGORY_ROLLUP"

  create_table "T_PRODUCT_CODE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.uuid     "PARTY_ID",                                         null: false
    t.varchar  "CODE",                  limit: 10,                 null: false
    t.uuid     "PRODUCT_ID",                                       null: false
    t.uuid     "DURATION_ID",                                      null: false
    t.uuid     "BILLING_FREQUENCY_CV",                             null: false
  end

  add_index "T_PRODUCT_CODE", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_CODE"

  create_table "T_PRODUCT_COMPONENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "FROM_PRODUCT_ID",                                   null: false
    t.uuid     "TO_PRODUCT_ID",                                     null: false
    t.integer  "QUANTITY_USED",         limit: 4,                   null: false
    t.varchar  "INSTRUCTION",           limit: 200
    t.varchar  "COMMENT",               limit: 300
    t.uuid     "TYPE_CV"
  end

  add_index "T_PRODUCT_COMPONENT", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_COMPONENT"

  create_table "T_PRODUCT_FACILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "FACILITY_ID",                           null: false
    t.uuid     "PRODUCT_ID",                            null: false
  end

  add_index "T_PRODUCT_FACILITY", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_FACILITY"

  create_table "T_PRODUCT_FEATURE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                      null: false
    t.uuid     "CREATION_USER_ID",                                        null: false
    t.datetime "CREATION_TIMESTAMP",                                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                   null: false
    t.boolean  "IS_DELETED",                              default: false, null: false
    t.uuid     "PRODUCT_FEATURE_CATEGORY_ID",                             null: false
    t.varchar  "DESCRIPTION",                 limit: 255,                 null: false
    t.uuid     "PRODUCT_FEATURE_TYPE_CV",                                 null: false
  end

  add_index "T_PRODUCT_FEATURE", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_FEATURE"

  create_table "T_PRODUCT_FEATURE_APPLICABILITY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                    null: false
    t.uuid     "CREATION_USER_ID",                                      null: false
    t.datetime "CREATION_TIMESTAMP",                                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                 null: false
    t.boolean  "IS_DELETED",                            default: false, null: false
    t.uuid     "PRODUCT_ID",                                            null: false
    t.uuid     "PRODUCT_FEATURE_ID",                                    null: false
    t.datetime "EFFECTIVE_DATE",                                        null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "PRODUCT_FEATURE_APPLICABILITY_TYPE_CV",                 null: false
  end

  add_index "T_PRODUCT_FEATURE_APPLICABILITY", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_FEATURE_APPLICABILITY"

  create_table "T_PRODUCT_FEATURE_CATEGORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "DESCRIPTION",           limit: 255,                 null: false
  end

  add_index "T_PRODUCT_FEATURE_CATEGORY", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_FEATURE_CATEGORY"

  create_table "T_PRODUCT_IDENTIFICATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "PRODUCT_ID",                                        null: false
    t.varchar  "VALUE",                  limit: 50,                 null: false
    t.uuid     "IDENTIFICATION_TYPE_CV",                            null: false
    t.uuid     "UOM_ID"
  end

  add_index "T_PRODUCT_IDENTIFICATION", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_IDENTIFICATION"

  create_table "T_PRODUCT_MEMBERSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PRODUCT_ID",                            null: false
    t.uuid     "MEMBERSHIP_TYPE_ID",                    null: false
  end

  add_index "T_PRODUCT_MEMBERSHIP", ["ROW_ID"], name: "IX_ROW_ID_T_PRODUCT_MEMBERSHIP"

  create_table "T_PROGRAM_CHECK_IN", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                     null: false
    t.uuid     "REGISTRATION_ID",        null: false
    t.uuid     "CHECKED_IN_BY_PARTY_ID", null: false
    t.uuid     "CHECKED_IN_BY_USER_ID",  null: false
    t.datetime "CHECKED_IN_DATETIME",    null: false
  end

  add_index "T_PROGRAM_CHECK_IN", ["ROW_ID"], name: "IX_ROW_ID_T_CHECK_IN"

  create_table "T_PROGRAM_CLASSIFICATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.string   "NAME",                  limit: 50,                         null: false
    t.text     "DESCRIPTION",           limit: 2147483647
    t.boolean  "IS_AVAILABLE_ONLINE",                      default: false, null: false
    t.boolean  "IS_SYSTEM",                                default: false, null: false
  end

  add_index "T_PROGRAM_CLASSIFICATION", ["ROW_ID"], name: "IX_ROW_ID_T_PROGRAM_CLASSIFICATION"

  create_table "T_PROGRAM_INSTANCE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PROGRAM_ID",                            null: false
    t.uuid     "APPOINTMENT_ID",                        null: false
    t.datetime "START_DATETIME",                        null: false
    t.datetime "END_DATETIME",                          null: false
  end

  add_index "T_PROGRAM_INSTANCE", ["ROW_ID"], name: "IX_ROW_ID_T_PROGRAM_INSTANCE"

  create_table "T_PROGRAM_INSTRUCTOR", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "PARTY_ID",                              null: false
    t.uuid     "PROGRAM_ID",                            null: false
  end

  add_index "T_PROGRAM_INSTRUCTOR", ["ROW_ID"], name: "IX_ROW_ID_T_PROGRAM_INSTRUCTOR"

  create_table "T_PROX_CARD", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                null: false
    t.integer "EXPECTED_BIT_COUNT",        limit: 4
    t.integer "FIXED_LENGTH",              limit: 4
    t.string  "MASK",                      limit: 100
    t.integer "LEADING_PARITY_BIT_COUNT",  limit: 4
    t.integer "TRAILING_PARITY_BIT_COUNT", limit: 4
    t.integer "MULTIPLIER",                limit: 4,   default: 1, null: false
  end

  add_index "T_PROX_CARD", ["ROW_ID"], name: "IX_ROW_ID_T_PROX_CARD"

  create_table "T_PUBLISH_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.datetime "LAST_PUBLISH_TIMESTAMP",                           null: false
    t.string   "APPLICATION_VERSION",    limit: 50
    t.boolean  "IS_IDL_EXECUTED",                   default: true, null: false
  end

  add_index "T_PUBLISH_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_PUBLISH_LOG"

  create_table "T_QUALIFICATION_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 100,                 null: false
    t.string   "DESCRIPTION",           limit: 300
    t.boolean  "IS_PUBLISHED_ONLINE",                               null: false
  end

  add_index "T_QUALIFICATION_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_QUALIFICATION_TYPE"

  create_table "T_QUERY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.string   "NAME",                  limit: 100,                        null: false
    t.uuid     "ENTITY_TYPE",                                              null: false
    t.text     "SQL",                   limit: 2147483647,                 null: false
  end

  add_index "T_QUERY", ["ROW_ID"], name: "IX_ROW_ID_T_QUERY"

  create_table "T_QUERY_PARAMETER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "QUERY_ID",                                                 null: false
    t.uuid     "TYPE",                                                     null: false
    t.uuid     "VALUE"
    t.text     "VALUE_NAME",            limit: 2147483647
    t.datetime "CUSTOM_FROM_DATE"
    t.datetime "CUSTOM_TO_DATE"
  end

  add_index "T_QUERY_PARAMETER", ["ROW_ID"], name: "IX_ROW_ID_T_QUERY_PARAMETER"

  create_table "T_QUERY_PARAMETER_ENTITY_RELATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                      null: false
    t.uuid     "CREATION_USER_ID",                        null: false
    t.datetime "CREATION_TIMESTAMP",                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                   null: false
    t.boolean  "IS_DELETED",              default: false, null: false
    t.uuid     "QUERY_ENTITY_TYPE_CV",                    null: false
    t.uuid     "QUERY_PARAMETER_TYPE_CV",                 null: false
  end

  add_index "T_QUERY_PARAMETER_ENTITY_RELATION", ["ROW_ID"], name: "IX_ROW_ID_T_QUERY_PARAMETER_ENTITY_RELATION"

  create_table "T_QUERY_TASK", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "QUERY_ID",                                                 null: false
    t.string   "NAME",                  limit: 50,                         null: false
    t.binary   "REPORT_DATA",           limit: 2147483647
    t.boolean  "IS_EXPORT",                                default: false, null: false
    t.boolean  "IS_REPORT",                                default: false, null: false
    t.string   "LOCATION",              limit: 500
    t.uuid     "SCHEDULED_TASK_ID"
    t.uuid     "FILE_TYPE_CV"
    t.string   "CUSTOM_REPORT_NAME",    limit: 300
  end

  add_index "T_QUERY_TASK", ["ROW_ID"], name: "IX_ROW_ID_T_QUERY_TASK"

  create_table "T_QUICK_STATS", primary_key: "ROW_ID", force: :cascade do |t|
    t.datetime "ORDERS_TIMESTAMP"
    t.integer  "ORDERS_IN_PERSON",        limit: 4, default: 0
    t.integer  "ORDERS_ONLINE",           limit: 4, default: 0
    t.datetime "MEMBERS_TIMESTAMP"
    t.boolean  "INVALIDATE_MEMBER_COUNT",           default: true, null: false
    t.integer  "MEMBERS",                 limit: 4, default: 0
    t.datetime "EQUIPMENT_TIMESTAMP"
    t.integer  "EQUIPMENT_CHECKOUTS",     limit: 4, default: 0
    t.integer  "EQUIPMENT_OUT",           limit: 4, default: 0
    t.datetime "FACILITY_TIMESTAMP"
    t.integer  "FACILITY_ACCESSES",       limit: 4, default: 0
  end

  add_index "T_QUICK_STATS", ["ROW_ID"], name: "IX_ROW_ID_T_QUICK_STATS"

  create_table "T_REGISTRATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                      null: false
    t.uuid     "CREATION_USER_ID",                                        null: false
    t.datetime "CREATION_TIMESTAMP",                                      null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                     null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                   null: false
    t.boolean  "IS_DELETED",                              default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                          null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "SEMESTER_ID"
    t.uuid     "COURSE_ID",                                               null: false
    t.uuid     "COURSE_OFFERING_ID"
    t.uuid     "PARTY_ID"
    t.string   "REGISTRATION_NUMBER",         limit: 100,                 null: false
    t.boolean  "IS_WAIVER_SIGNED",                        default: false, null: false
    t.uuid     "WEB_SESSION_ID"
    t.boolean  "IS_PAID",                                 default: false, null: false
    t.boolean  "IS_ON_WAITING_LIST",                      default: false, null: false
    t.boolean  "IS_SELF_SIGN_OUT_ALLOWED",                default: false
    t.boolean  "IS_ADDITIONAL_INFO_REQUIRED",             default: false, null: false
    t.boolean  "IS_ADDITIONAL_INFO_COMPLETE",             default: false, null: false
    t.uuid     "REMOVAL_METHOD_CV"
    t.uuid     "PROGRAM_INSTANCE_ID"
  end

  add_index "T_REGISTRATION", ["COURSE_OFFERING_ID", "COURSE_ID", "SEMESTER_ID", "PARTY_ID", "ID"], name: "IX_ROW_ID_T_REGISTRATION_Clustered", unique: true
  add_index "T_REGISTRATION", ["IS_DELETED", "EFFECTIVE_DATE"], name: "<Name of Missing Index, sysname,>"
  add_index "T_REGISTRATION", ["IS_PAID", "IS_ON_WAITING_LIST", "PARTY_ID"], name: "T_REGISTRATION_IS_PAID_IS_ON_WAITING_LIST_PARTY_ID"
  add_index "T_REGISTRATION", ["PARTY_ID"], name: "T_REGISTRATION_PARTY_ID"

  create_table "T_REGISTRATION_PICKUP_PARTY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                   null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "REGISTRATION_ID",                                  null: false
    t.uuid     "PARTY_ID",                                         null: false
    t.string   "FIRST_NAME",            limit: 50,                 null: false
    t.string   "LAST_NAME",             limit: 50,                 null: false
    t.string   "PHONE_NUMBER",          limit: 50,                 null: false
  end

  add_index "T_REGISTRATION_PICKUP_PARTY", ["ROW_ID"], name: "IX_ROW_ID_T_REGISTRATION_PICKUP_PARTY"

  create_table "T_REMOVED_COURT_BOOKING_PARTNERS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid   "ID",                                null: false
    t.uuid   "PRIMARY_PARTY_ID",                  null: false
    t.uuid   "PARTNER_PARTY_ID"
    t.string "PARTNER_EMAIL_ADDRESS", limit: 100
    t.string "PARTNER_ID_NUMBER",     limit: 50
  end

  add_index "T_REMOVED_COURT_BOOKING_PARTNERS", ["ROW_ID"], name: "IX_ROW_ID_T_REMOVED_COURT_BOOKING_PARTNERS"

  create_table "T_RENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                             null: false
    t.uuid     "CREATION_USER_ID",                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                          null: false
    t.boolean  "IS_DELETED",                                     default: false, null: false
    t.uuid     "PARTY_ID",                                                       null: false
    t.decimal  "MONTHLY_RENT_PAYMENT",  precision: 18, scale: 2
  end

  add_index "T_RENT", ["ROW_ID"], name: "IX_ROW_ID_T_RENT"

  create_table "T_RENTAL_PERIOD", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                        null: false
    t.uuid     "CREATION_USER_ID",                                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                     null: false
    t.boolean  "IS_DELETED",                                                default: false, null: false
    t.string   "NAME",                   limit: 50,                                         null: false
    t.uuid     "UOM_ID",                                                                    null: false
    t.boolean  "IS_SINGLE_VALUE",                                           default: false, null: false
    t.decimal  "VALUE_1",                           precision: 9, scale: 2,                 null: false
    t.decimal  "VALUE_2",                           precision: 9, scale: 2
    t.uuid     "DUE_BACK_TYPE_CV"
    t.uuid     "RENTAL_PERIOD_GROUP_ID",                                                    null: false
  end

  add_index "T_RENTAL_PERIOD", ["ROW_ID"], name: "IX_ROW_ID_T_RENTAL_PERIOD"

  create_table "T_RENTAL_PERIOD_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.string   "NAME",                  limit: 50,                 null: false
    t.uuid     "UOM_GROUP_ID"
  end

  add_index "T_RENTAL_PERIOD_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_RENTAL_PERIOD_GROUP"

  create_table "T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                     null: false
    t.uuid     "CREATION_USER_ID",                       null: false
    t.datetime "CREATION_TIMESTAMP",                     null: false
    t.uuid     "LAST_UPDATE_USER_ID",                    null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                  null: false
    t.boolean  "IS_DELETED",             default: false, null: false
    t.uuid     "RENTAL_PERIOD_GROUP_ID",                 null: false
    t.uuid     "PRODUCT_CATEGORY_ID",                    null: false
  end

  add_index "T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY", ["ROW_ID"], name: "IX_ROW_ID_T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY"

  create_table "T_REORDER_GUIDELINE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "PRODUCT_ID",                                      null: false
    t.uuid     "FACILITY_ID"
    t.datetime "EFFECTIVE_DATE",                                  null: false
    t.datetime "UNTIL_DATE"
    t.integer  "REORDER_QUANTITY",      limit: 4, default: 0,     null: false
    t.integer  "REORDER_LEVEL",         limit: 4, default: 0,     null: false
  end

  add_index "T_REORDER_GUIDELINE", ["ROW_ID"], name: "IX_ROW_ID_T_REORDER_GUIDELINE"

  create_table "T_REPORT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.boolean  "IS_ENABLED",                        default: true,  null: false
    t.string   "NAME",                  limit: 100,                 null: false
    t.uuid     "GROUP_ID"
    t.string   "CLASS_NAME",            limit: 100
    t.string   "DESCRIPTION",           limit: 300
  end

  add_index "T_REPORT", ["ROW_ID"], name: "IX_ROW_ID_T_REPORT"

  create_table "T_REPORT_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 100
    t.boolean  "IS_ENABLED",                        default: true,  null: false
  end

  add_index "T_REPORT_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_REPORT_GROUP"

  create_table "T_REPORT_TIME", primary_key: "ROW_ID", force: :cascade do |t|
    t.string "LABEL", limit: 25, null: false
    t.string "VALUE", limit: 25, null: false
  end

  add_index "T_REPORT_TIME", ["ROW_ID"], name: "IX_ROW_ID_T_REPORT_TIME"

  create_table "T_REVENUE_TYPE_TAX_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "TAX_REGION_ID",                         null: false
    t.uuid     "TAX_GROUP_ID",                          null: false
    t.uuid     "REVENUE_TYPE_CV",                       null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_REVENUE_TYPE_TAX_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_REVENUE_TYPE_TAX_GROUP"

  create_table "T_REVERSE_IMPORT_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_REVERSE_IMPORT_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_REVERSE_IMPORT_ITEM"

  create_table "T_REVERSE_IMPORT_STAGING", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "PERSON_ID",                                     null: false
    t.boolean "HAS_OTHER_AGREEMENTS",          default: false, null: false
    t.boolean "HAS_ORDERS",                    default: false, null: false
    t.boolean "HAS_EQUIPMENT",                 default: false, null: false
    t.boolean "HAS_ACCESS",                    default: false, null: false
    t.boolean "HAS_USER_ACCOUNT",              default: false, null: false
    t.boolean "HAS_BIOMETRIC_ENROLLMENT_DATA", default: false, null: false
    t.boolean "DELETE",                        default: false, null: false
  end

  add_index "T_REVERSE_IMPORT_STAGING", ["ROW_ID"], name: "IX_ROW_ID_T_REVERSE_IMPORT_STAGING"

  create_table "T_ROLE_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                      null: false
    t.varchar "DESCRIPTION", limit: 255, null: false
  end

  add_index "T_ROLE_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_ROLE_TYPE"

  create_table "T_SALES_ACCOUNTING_TRANSACTION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "TRANSACTION_ID", null: false
    t.uuid "INVOICE_ID",     null: false
  end

  add_index "T_SALES_ACCOUNTING_TRANSACTION", ["ROW_ID"], name: "IX_ROW_ID_T_SALES_ACCOUNTING_TRANSACTION"

  create_table "T_SALES_ORDER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_SALES_ORDER", ["ROW_ID"], name: "IX_ROW_ID_T_SALES_ORDER"

  create_table "T_SALES_RECEIPT_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                               null: false
    t.uuid     "CREATION_USER_ID",                                                                                 null: false
    t.datetime "CREATION_TIMESTAMP",                                                                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                                            null: false
    t.boolean  "IS_DELETED",                                                          default: false,              null: false
    t.boolean  "PRINT_LOCK_COMBINATION_ON_RECEIPT",                                   default: false,              null: false
    t.boolean  "RECEIPT_PRINT_CUSTOMER_NAME",                                         default: false,              null: false
    t.boolean  "RECEIPT_PRINT_CUSTOMER_ADDRESS",                                      default: false,              null: false
    t.boolean  "RECEIPT_PRINT_ORDER_DATE",                                            default: false,              null: false
    t.boolean  "RECEIPT_PRINT_USER_NAME",                                             default: false,              null: false
    t.boolean  "RECEIPT_PRINT_COMPUTER",                                              default: false,              null: false
    t.boolean  "RECEIPT_PRINT_ITEM_CUSTOMER_INFORMATION",                             default: false,              null: false
    t.boolean  "RECEIPT_PRINT_ITEM_COMMENTS",                                         default: false,              null: false
    t.text     "RECEIPT_HEADER",                                   limit: 2147483647, default: "0"
    t.text     "RECEIPT_FOOTER",                                   limit: 2147483647, default: "0"
    t.binary   "RECEIPT_IMAGE_DATA",                               limit: 2147483647, default: "\x00\x00\x00\x00"
    t.boolean  "ENABLE_DISPLAY_OF_SIGNATURE_LINE_ON_ALL_RECEIPTS",                    default: false,              null: false
    t.uuid     "CREDIT_CARD_PRINTING_OPTION_CODE"
    t.uuid     "SOLD_TO_PRINTING_OPTION_CODE"
  end

  add_index "T_SALES_RECEIPT_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SALES_RECEIPT_SETTINGS"

  create_table "T_SALES_TAX_LOOKUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                             null: false
    t.uuid     "CREATION_USER_ID",                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                          null: false
    t.boolean  "IS_DELETED",                                     default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                                 null: false
    t.uuid     "PRODUCT_CATEGORY_ID"
    t.uuid     "GEOGRAPHIC_LOCATION_ID"
    t.decimal  "SALES_TAX_PERCENTAGE",   precision: 9, scale: 4,                 null: false
  end

  add_index "T_SALES_TAX_LOOKUP", ["ROW_ID"], name: "IX_ROW_ID_T_SALES_TAX_LOOKUP"

  create_table "T_SAVED_PAYMENT_INFO", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "PARTY_ID",                                          null: false
    t.string   "TOKEN",                 limit: 500
    t.string   "ID_NUMBER",             limit: 15
    t.string   "EXPIRY_DATE",           limit: 50
    t.uuid     "PROVIDER",                                          null: false
    t.string   "CARD_MASK",             limit: 25
    t.string   "CARD_TYPE",             limit: 100
    t.integer  "EXPIRY_MONTH",          limit: 4
    t.integer  "EXPIRY_YEAR",           limit: 4
  end

  add_index "T_SAVED_PAYMENT_INFO", ["ROW_ID"], name: "IX_ROW_ID_T_RECURRING_PAYMENTS"

  create_table "T_SCHEDULED_PROGRAM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                                                                  null: false
    t.integer "SIZE",                                              limit: 4
    t.integer "GO_SIZE",                                           limit: 4
    t.uuid    "REGISTRATION_PERIOD_OPENS_UNIT_CV"
    t.integer "REGISTRATION_PERIOD_OPENS_VALUE",                   limit: 4,                         default: 1
    t.uuid    "REGISTRATION_PERIOD_CLOSES_UNIT_CV"
    t.integer "REGISTRATION_PERIOD_CLOSES_VALUE",                  limit: 4,                         default: 1
    t.boolean "IS_ONLINE_BROWSING_ALLOWED",                                                          default: false, null: false
    t.boolean "IS_ONLINE_REGISTRATION_ALLOWED",                                                      default: false, null: false
    t.boolean "IS_IN_PERSON_REGISTRATION_ALLOWED",                                                   default: false, null: false
    t.boolean "IS_PHONE_REGISTRATION_ALLOWED",                                                       default: false, null: false
    t.boolean "PROMPT_FOR_SELF_SIGN_OUT",                                                            default: false, null: false
    t.uuid    "PARKING_PERMIT_ID"
    t.boolean "IS_ELIGIBLE_FOR_CHILD_FITNESS_TAX_CREDIT",                                            default: false, null: false
    t.decimal "CHILD_FITNESS_TAX_CREDIT_PRORATE_PERCENTAGE",                 precision: 7, scale: 3
    t.boolean "IS_ONLINE_REGISTRATION_PERIOD_ENABLED",                                               default: false, null: false
    t.uuid    "ONLINE_REGISTRATION_PERIOD_OPENS_UNIT_CV"
    t.integer "ONLINE_REGISTRATION_PERIOD_OPENS_VALUE",            limit: 4,                         default: 1
    t.uuid    "ONLINE_REGISTRATION_PERIOD_CLOSES_UNIT_CV"
    t.integer "ONLINE_REGISTRATION_PERIOD_CLOSES_VALUE",           limit: 4,                         default: 1
    t.boolean "ALLOW_STANDBY_REGISTRATIONS",                                                         default: false, null: false
    t.integer "STANDBY_REGISTRATION_PERIOD_OPENS_MINUTES",         limit: 4
    t.integer "CHECK_IN_PERIOD_OPENS_MINUTES",                     limit: 4
    t.integer "CHECK_IN_PERIOD_CLOSES_MINUTES",                    limit: 4
    t.uuid    "CHECK_IN_PERIOD_CLOSES_TIME_PREFERENCE_TYPE_CV"
    t.boolean "ALLOW_INSTRUCTOR_CHECK_IN_OUTSIDE_CHECK_IN_PERIOD",                                   default: false, null: false
    t.integer "WAITING_LIST_SIZE",                                 limit: 4
  end

  add_index "T_SCHEDULED_PROGRAM", ["ROW_ID"], name: "IX_ROW_ID_T_COURSE_SCHEDULE_OFFERING"

  create_table "T_SCHEDULED_TASK", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid        "ID",                                                       null: false
    t.uuid        "CREATION_USER_ID",                                         null: false
    t.datetime    "CREATION_TIMESTAMP",                                       null: false
    t.uuid        "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime    "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean     "IS_DELETED",                               default: false, null: false
    t.uuid        "TASK_TYPE_CV"
    t.string      "NAME",                  limit: 150
    t.datetime    "START_DATE"
    t.datetime    "START_TIME"
    t.integer     "FREQUENCY",             limit: 4
    t.integer     "DAYS_OF_WEEK",          limit: 4
    t.integer     "PERIODICITY",           limit: 4
    t.boolean     "IS_STARTED",                               default: false, null: false
    t.datetime    "LAST_RUN_DATE"
    t.boolean     "IS_SIMULATED_FAILURE",                     default: false, null: false
    t.uuid        "LAST_RUN_STATUS_CV"
    t.varchar_max "LAST_RUN_MESSAGE",      limit: 2147483647
    t.integer     "MONTH",                 limit: 4
    t.integer     "DAY_NUMBER",            limit: 4
    t.integer     "WEEK_OF_MONTH",         limit: 4
  end

  add_index "T_SCHEDULED_TASK", ["ROW_ID"], name: "IX_ROW_ID_T_SCHEDULED_TASK"

  create_table "T_SCHEDULED_TASK_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "TASK_TYPE_CV",                                             null: false
    t.uuid     "TASK_TYPE_ID"
    t.uuid     "STATUS_CV",                                                null: false
    t.text     "MESSAGE",               limit: 2147483647
    t.string   "TASK_NAME",             limit: 150
  end

  add_index "T_SCHEDULED_TASK_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_SCHEDULED_TASK_LOG"

  create_table "T_SCHEMA_VERSION", primary_key: "ROW_ID", force: :cascade do |t|
    t.integer  "MAJOR",    limit: 4,   null: false
    t.integer  "MINOR",    limit: 4,   null: false
    t.integer  "BUILD",    limit: 4,   null: false
    t.integer  "REVISION", limit: 4,   null: false
    t.datetime "DATE",                 null: false
    t.string   "COMMENT",  limit: 500
  end

  add_index "T_SCHEMA_VERSION", ["ROW_ID"], name: "IX_ROW_ID_T_SCHEMA_VERSION"

  create_table "T_SECURITY_OPERATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.varchar  "NAME",                  limit: 50,                 null: false
  end

  add_index "T_SECURITY_OPERATION", ["ROW_ID"], name: "IX_ROW_ID_T_SECURITY_OPERATION"

  create_table "T_SECURITY_ROLE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "NAME",                  limit: 50,                  null: false
    t.varchar  "DESCRIPTION",           limit: 300
    t.boolean  "IS_SYSTEM",                         default: false, null: false
  end

  add_index "T_SECURITY_ROLE", ["ROW_ID"], name: "IX_ROW_ID_T_SECURITY_ROLE"

  create_table "T_SECURITY_ROLE_ASSIGNMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "USER_ACCOUNT_ID",                       null: false
    t.uuid     "SECURITY_ROLE_ID",                      null: false
  end

  add_index "T_SECURITY_ROLE_ASSIGNMENT", ["ROW_ID"], name: "IX_ROW_ID_T_SECURITY_ROLE_ASSIGNMENT"

  create_table "T_SECURITY_ROLE_REPORT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "SECURITY_ROLE_ID",                      null: false
    t.uuid     "REPORT_ID",                             null: false
  end

  add_index "T_SECURITY_ROLE_REPORT", ["ROW_ID"], name: "IX_ROW_ID_T_SECURITY_ROLE_REPORT"

  create_table "T_SECURITY_ROLE_TASK", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
    t.uuid     "SECURITY_ROLE_ID",                      null: false
    t.uuid     "SECURITY_TASK_ID",                      null: false
  end

  add_index "T_SECURITY_ROLE_TASK", ["ROW_ID"], name: "IX_ROW_ID_T_SECURITY_ROLE_TASK"

  create_table "T_SECURITY_TASK", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "NAME",                  limit: 50,                  null: false
    t.varchar  "DESCRIPTION",           limit: 300
    t.uuid     "PARENT_ID"
  end

  add_index "T_SECURITY_TASK", ["ROW_ID"], name: "IX_ROW_ID_T_SECURITY_TASK"

  create_table "T_SECURITY_TASK_OPERATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "SECURITY_TASK_ID",                      null: false
    t.uuid     "SECURITY_OPERATION_ID",                 null: false
  end

  add_index "T_SECURITY_TASK_OPERATION", ["ROW_ID"], name: "IX_ROW_ID_T_SECURITY_TASK_OPERATION"

  create_table "T_SELF_REGISTRATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                null: false
    t.uuid     "PERSON_ID",         null: false
    t.datetime "REGISTRATION_DATE", null: false
    t.uuid     "SOURCE_TYPE_CV",    null: false
    t.boolean  "IS_VERIFIED",       null: false
  end

  add_index "T_SELF_REGISTRATION", ["ROW_ID"], name: "IX_ROW_ID_T_SELF_REGISTRATION"

  create_table "T_SEMESTER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                          null: false
    t.uuid     "CREATION_USER_ID",                                            null: false
    t.datetime "CREATION_TIMESTAMP",                                          null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                         null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                       null: false
    t.boolean  "IS_DELETED",                                  default: false, null: false
    t.datetime "EFFECTIVE_DATE",                                              null: false
    t.datetime "UNTIL_DATE",                                                  null: false
    t.varchar  "NAME",                            limit: 100,                 null: false
    t.datetime "REGISTRATION_START_DATE",                                     null: false
    t.datetime "LOCKER_SERVICE_END_DATE",                                     null: false
    t.datetime "DEFAULT_REGISTRATION_OPENS_DATE"
    t.datetime "PUBLISH_FROM_DATE"
    t.datetime "PUBLISH_UNTIL_DATE"
    t.string   "TERM_CODE",                       limit: 10
    t.datetime "TERM_CODE_EFFECTIVE_DATE"
    t.datetime "TERM_CODE_UNTIL_DATE"
  end

  add_index "T_SEMESTER", ["ROW_ID"], name: "IX_ROW_ID_T_SEMESTER"

  create_table "T_SERVER_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                          null: false
    t.uuid     "CREATION_USER_ID",                                                            null: false
    t.datetime "CREATION_TIMESTAMP",                                                          null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                         null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                       null: false
    t.boolean  "IS_DELETED",                                                  default: false, null: false
    t.string   "REPORTING_USERNAME",                              limit: 150
    t.string   "REPORTING_USER_PASSWORD",                         limit: 150
    t.string   "REPORTING_SERVICE_URI",                           limit: 500
    t.string   "REPORTING_DATABASE_CONNECTION_STRING",            limit: 500
    t.string   "SMTP_SERVER_NAME",                                limit: 150
    t.string   "SMTP_SERVER_PORT",                                limit: 150
    t.string   "SMTP_SERVER_USERNAME",                            limit: 150
    t.string   "SMTP_SERVER_PASSWORD",                            limit: 150
    t.boolean  "SMTP_SERVER_IS_SSL_ENABLED"
    t.string   "SMTP_SERVER_DEFAULT_SENDER",                      limit: 150
    t.string   "BATCH_QUEUE_SERVER_URI",                          limit: 500
    t.string   "INTEGRATION_ASSEMBLY_NAME",                       limit: 500
    t.boolean  "IS_INTEGRATION_AT_KIOSK_ENABLED",                             default: false, null: false
    t.boolean  "IS_INTEGRATION_AT_ACCESS_ENABLED",                            default: false, null: false
    t.integer  "INTEGRATION_VALIDATION_CACHE_ITEM_DURATION_DAYS", limit: 4
    t.uuid     "INTEGRATION_EXTERNAL_ID_TYPE_ID"
    t.uuid     "INTEGRATION_MEMBERSHIP_TYPE_ID"
    t.boolean  "IS_LDAP_AUTHENTICATION_ENABLED",                              default: false, null: false
    t.boolean  "LDAP_IS_ACTIVE_DIRECTORY",                                    default: false, null: false
    t.integer  "LDAP_PROTOCOL_VERSION",                           limit: 4
    t.string   "LDAP_HOST",                                       limit: 100
    t.integer  "LDAP_PORT",                                       limit: 4
    t.string   "LDAP_BASE_DN",                                    limit: 200
    t.string   "LDAP_USER_DOMAIN",                                limit: 100
    t.string   "LDAP_USER_ID_FIELD",                              limit: 50
    t.boolean  "LDAP_IS_SSL_ENABLED",                                         default: false, null: false
    t.boolean  "LDAP_IS_FAST_BIND_ENABLED",                                   default: false, null: false
    t.integer  "LDAP_AUTH_TYPE",                                  limit: 4
    t.integer  "LDAP_AD_AUTHENTICATION_TYPE",                     limit: 4
    t.boolean  "LDAP_IS_ONLINE_EMAIL_USERNAME_SIGN_ON_ENABLED",               default: false, null: false
    t.string   "LDAP_EMAIL_USERNAME_DOMAIN",                      limit: 50
    t.string   "LDAP_BIND_DN",                                    limit: 200
    t.string   "LDAP_BIND_PASSWORD",                              limit: 50
    t.string   "LDAP_SEARCH_FILTER",                              limit: 200
    t.integer  "LDAP_SEARCH_SCOPE",                               limit: 4
    t.string   "HUB_URI",                                         limit: 300
  end

  add_index "T_SERVER_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SERVER_SETTINGS"

  create_table "T_SERVICE_PERIOD_CUSTOM_DATE_RANGE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "SERVICE_PERIOD_ID",                     null: false
    t.uuid     "CUSTOM_DATE_RANGE_ID",                  null: false
  end

  add_index "T_SERVICE_PERIOD_CUSTOM_DATE_RANGE", ["ROW_ID"], name: "IX_ROW_ID_T_SERVICE_PERIOD_CUSTOM_DATE_RANGE"

  create_table "T_SHALA_INTEGRATION_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "PARTY_ID",                                          null: false
    t.varchar  "EXTERNAL_ID",           limit: 100
    t.integer  "ERROR_ID",              limit: 4
    t.boolean  "IS_ELIGIBLE"
  end

  add_index "T_SHALA_INTEGRATION_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_SHALA_INTEGRATION_LOG"

  create_table "T_SHIFT4_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                        null: false
    t.uuid     "CREATION_USER_ID",                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                     null: false
    t.boolean  "IS_DELETED",                                default: false, null: false
    t.string   "MERCHANT_ID_RETAIL",             limit: 50
    t.string   "MERCHANT_ID_MOTO",               limit: 50
    t.string   "MERCHANT_ID_ECOMMERCE",          limit: 50
    t.string   "API_SERIAL_NUMBER",              limit: 50
    t.string   "API_SERIAL_PASSWORD",            limit: 50
    t.boolean  "IS_POS_INTEGRATION_ENABLED",                default: false, null: false
    t.integer  "GLOBAL_TIMER",                   limit: 4
    t.boolean  "IS_VALID_AVS_RESPONSE_REQUIRED",            default: false, null: false
    t.string   "AUTH_TOKEN",                     limit: 36
    t.string   "ACCESS_TOKEN",                   limit: 36
  end

  add_index "T_SHIFT4_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SHIFT4_SETTINGS"

  create_table "T_SHIPMENT_PACKAGE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.datetime "DATE_RECEIVED"
    t.uuid     "SENDER_PARTY_ID"
    t.uuid     "RECEIVER_PARTY_ID"
    t.uuid     "SENDER_FACILITY_ID"
    t.uuid     "RECEIVER_FACILITY_ID"
    t.varchar  "INVOICE_NUMBER",        limit: 50
    t.varchar  "RECEIVING_NUMBER",      limit: 50
  end

  add_index "T_SHIPMENT_PACKAGE", ["ROW_ID"], name: "IX_ROW_ID_T_SHIPMENT_PACKAGE"

  create_table "T_SHORTEN_URL", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "ACTION_NAME",           limit: 200,                 null: false
    t.string   "CONTROLLER_NAME",       limit: 200,                 null: false
    t.string   "PARAMETERS",            limit: 500,                 null: false
    t.string   "SHORTEN_ID",            limit: 20,                  null: false
  end

  add_index "T_SHORTEN_URL", ["ROW_ID"], name: "IX_ROW_ID_T_SHORTEN_URL"

  create_table "T_SIGN_ON_INTEGRATION_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "TYPE_CV"
    t.uuid     "USER_ID"
    t.string   "EMAIL_ADDRESS",         limit: 100
    t.boolean  "WAS_SUCCESSFUL",                    default: false, null: false
  end

  add_index "T_SIGN_ON_INTEGRATION_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_SIGN_ON_INTEGRATION_LOG"

  create_table "T_SOCIAL_MEDIA_WEB_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "TWITTER_URL",           limit: 150
    t.varchar  "TWITTER_WIDGET_ID",     limit: 150
  end

  add_index "T_SOCIAL_MEDIA_WEB_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SOCIAL_MEDIA_WEB_SETTINGS"

  create_table "T_SUPPLIER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  add_index "T_SUPPLIER", ["ROW_ID"], name: "IX_ROW_ID_T_SUPPLIER"

  create_table "T_SUPPLIER_PRODUCT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                       null: false
    t.uuid     "CREATION_USER_ID",                                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                    null: false
    t.boolean  "IS_DELETED",                                               default: false, null: false
    t.datetime "AVAILABLE_FROM_DATE",                                                      null: false
    t.datetime "AVAILABLE_THRU_DATE"
    t.uuid     "PRODUCT_ID",                                                               null: false
    t.uuid     "ORGANIZATION_ID",                                                          null: false
    t.integer  "STANDARD_LEAD_TIME",    limit: 4
    t.uuid     "PREFERENCE_TYPE_CV"
    t.uuid     "RATING_TYPE_CV"
    t.decimal  "COST",                             precision: 9, scale: 2
    t.uuid     "CURRENCY_TYPE_CV"
    t.varchar  "SUPPLIER_PRODUCT_CODE", limit: 50
  end

  add_index "T_SUPPLIER_PRODUCT", ["ROW_ID"], name: "IX_ROW_ID_T_SUPPLIER_PRODUCT"

  create_table "T_SYSTEM_EVENT_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.string   "SOURCE",                limit: 50
    t.string   "DESCRIPTION",           limit: 500
    t.uuid     "TYPE_CV"
    t.uuid     "COMPUTER_ID"
    t.uuid     "HARDWARE_DEVICE_ID"
    t.string   "ERROR_CODE",            limit: 50
    t.text     "EVENT_DATA",            limit: 2147483647
  end

  add_index "T_SYSTEM_EVENT_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_EVENT_LOG"

  create_table "T_SYSTEM_IDL_PROCEDURE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                             null: false
    t.datetime "CREATION_TIMESTAMP",                             null: false
    t.string   "PROCEDURE_NAME",     limit: 200,                 null: false
    t.boolean  "ONLY_RUN_ONCE",                  default: false, null: false
    t.datetime "LAST_RUN_TIMESTAMP"
  end

  add_index "T_SYSTEM_IDL_PROCEDURE", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_IDL_PROCEDURE"

  create_table "T_SYSTEM_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid      "ID",                                                                                           null: false
    t.uuid      "CREATION_USER_ID",                                                                             null: false
    t.datetime  "CREATION_TIMESTAMP",                                                                           null: false
    t.uuid      "LAST_UPDATE_USER_ID",                                                                          null: false
    t.datetime  "LAST_UPDATE_TIMESTAMP",                                                                        null: false
    t.boolean   "IS_DELETED",                                                                   default: false, null: false
    t.string    "DEFAULT_USER_PASSWORD",                                     limit: 50
    t.varbinary "DEFAULT_USER_PASSWORD_HASH",                                limit: 512
    t.uuid      "PRIMARY_EXTERNAL_ID_TYPE_CV"
    t.integer   "EXTERNAL_ID_NUMBER_LENGTH",                                 limit: 4
    t.boolean   "IS_MEMBER_FIRST_NAME_REQUIRED"
    t.boolean   "IS_MEMBER_LAST_NAME_REQUIRED"
    t.boolean   "IS_MEMBER_MIDDLE_NAME_REQUIRED"
    t.boolean   "IS_MEMBER_TITLE_REQUIRED"
    t.boolean   "IS_MEMBER_SUFFIX_REQUIRED"
    t.boolean   "IS_MEMBER_GOES_BY_NAME_REQUIRED"
    t.boolean   "IS_MEMBER_DATE_OF_BIRTH_REQUIRED"
    t.boolean   "IS_MEMBER_GENDER_REQUIRED"
    t.boolean   "IS_MEMBER_DRIVERS_LICENSE_REQUIRED"
    t.boolean   "IS_MEMBER_ACADEMIC_YEAR_REQUIRED"
    t.boolean   "IS_MEMBER_PROGRAM_INFORMATION_REQUIRED"
    t.boolean   "IS_MEMBER_MEMBERSHIP_TYPE_ELIGIBILITY_REQUIRED"
    t.boolean   "IS_IMAGE_DIRECTORY_AVAILABLE_ON_SERVER",                                       default: false, null: false
    t.string    "IMAGE_DIRECTORY",                                           limit: 300
    t.string    "IMAGE_PREFIX",                                              limit: 50
    t.string    "IMAGE_SUFFIX",                                              limit: 50
    t.integer   "FACILITY_BOOKING_LABEL_BACKGROUND_COLOR",                   limit: 4,          default: 0
    t.integer   "FACILITY_BOOKING_LABEL_FONT_COLOR",                         limit: 4,          default: 0
    t.integer   "FACILITY_RENTAL_LABEL_BACKGROUND_COLOR",                    limit: 4,          default: 0
    t.integer   "FACILITY_RENTAL_LABEL_FONT_COLOR",                          limit: 4,          default: 0
    t.integer   "FACILITY_COURSE_LABEL_BACKGROUND_COLOR",                    limit: 4,          default: 0
    t.integer   "FACILITY_COURSE_LABEL_FONT_COLOR",                          limit: 4,          default: 0
    t.integer   "FACILITY_INTRAMURAL_LABEL_BACKGROUND_COLOR",                limit: 4,          default: 0
    t.integer   "FACILITY_INTRAMURAL_LABEL_FONT_COLOR",                      limit: 4,          default: 0
    t.integer   "PENDING_STATUS_COLOR",                                      limit: 4,          default: 0
    t.integer   "NORMAL_STATUS_COLOR",                                       limit: 4
    t.integer   "QUOTE_STATUS_COLOR",                                        limit: 4
    t.integer   "DRAFT_STATUS_COLOR",                                        limit: 4
    t.integer   "FACILITY_RESERVATION_REQUEST_LABEL_BACKGROUND_COLOR",       limit: 4
    t.integer   "FACILITY_RESERVATION_REQUEST_LABEL_FONT_COLOR",             limit: 4
    t.integer   "FACILITY_RENTAL_QUOTE_EXPIRY_DAYS_DEFAULT",                 limit: 4
    t.boolean   "AUTO_COMPLETE_FACILITY_RENTAL_AGREEMENT_INVOICE_WHEN_PAID",                    default: false
    t.boolean   "IS_WEB_USER_ACCOUNT_ADDRESS_REQUIRED"
    t.boolean   "IS_WEB_USER_ACCOUNT_PHONE_REQUIRED"
    t.string    "IMAGE_WEB_SERVICE_URL",                                     limit: 300
    t.uuid      "IMAGE_SERVICE_EXTERNAL_ID_TYPE_CV"
    t.uuid      "IMAGE_SERVICE_ID_ENCODING_TYPE_CV"
    t.string    "IMAGE_SERVICE_SHARED_KEY",                                  limit: 100
    t.string    "IMAGE_SERVICE_IDENTIFIER",                                  limit: 50
    t.boolean   "INCLUDE_PENDING_FACILITY_REQUESTS",                                            default: false, null: false
    t.boolean   "AUTO_LOCK_FACILITY_RENTAL_AGREEMENT_WHEN_INVOICED",                            default: false, null: false
    t.integer   "FACILITY_ACCESS_WAIVER_COUNT",                              limit: 4,          default: 0,     null: false
    t.string    "CRYPTOGRAPHY_TEST_DATA",                                    limit: 1000
    t.boolean   "CALENDAR_SHOW_START_TIME",                                                     default: true,  null: false
    t.boolean   "CALENDAR_SHOW_END_TIME",                                                       default: true,  null: false
    t.boolean   "CALENDAR_SHOW_NAME",                                                           default: true,  null: false
    t.boolean   "CALENDAR_SHOW_NAME_CAPTION",                                                   default: true,  null: false
    t.boolean   "CALENDAR_SHOW_SUBJECT",                                                        default: true,  null: false
    t.boolean   "CALENDAR_SHOW_SUBJECT_CAPTION",                                                default: true,  null: false
    t.boolean   "CALENDAR_SHOW_AGREEMENT_NUMBER",                                               default: true,  null: false
    t.boolean   "CALENDAR_SHOW_AGREEMENT_NUMBER_CAPTION",                                       default: true,  null: false
    t.boolean   "CALENDAR_SHOW_RENTAL_PRODUCT",                                                 default: true,  null: false
    t.boolean   "CALENDAR_SHOW_RENTAL_PRODUCT_CAPTION",                                         default: true,  null: false
    t.boolean   "CALENDAR_SHOW_DESCRIPTION",                                                    default: true,  null: false
    t.boolean   "SHOW_SUA",                                                                     default: false, null: false
    t.boolean   "IS_CONTACT_EMAIL_ADDRESS_REQUIRED",                                            default: false, null: false
    t.boolean   "IS_CONTACT_PHONE_NUMBER_REQUIRED",                                             default: false, null: false
    t.integer   "MAXIMUM_HK2_VALID_HAND_SCORE",                              limit: 4,          default: 100,   null: false
    t.string    "IMAGE_SERVICE_USER_NAME",                                   limit: 150
    t.text      "IMAGE_SERVICE_PASSWORD",                                    limit: 2147483647
    t.boolean   "ARE_LIVE_TILES_ENABLED",                                                       default: true,  null: false
    t.boolean   "IS_DEMO_MODE_ENABLED",                                                         default: false, null: false
    t.boolean   "AUTO_POPULATE_ADDRESS",                                                        default: true,  null: false
    t.boolean   "CALENDAR_SHOW_PRIVATE_SUBJECT",                                                default: false
    t.boolean   "CALENDAR_SHOW_PRIVATE_DESCRIPTION",                                            default: false
    t.boolean   "CALENDAR_SHOW_PRIVATE_RENTAL_PRODUCT",                                         default: false
    t.boolean   "CALENDAR_SHOW_PRIVATE_NAME",                                                   default: false
    t.integer   "COURT_RESERVATION_LABEL_BACKGROUND_COLOR",                  limit: 4
    t.integer   "COURT_RESERVATION_LABEL_FONT_COLOR",                        limit: 4
    t.boolean   "INCLUDE_DRAFTS",                                                               default: false, null: false
    t.boolean   "SHOW_MEMBER_IMAGE_FOR_NON_MEMBERS",                                            default: true,  null: false
    t.boolean   "IS_MEMBER_EMAIL_ADDRESS_REQUIRED"
    t.boolean   "IS_MEMBER_PHONE_NUMBER_REQUIRED"
    t.boolean   "ENABLE_QUERY_BUILDER",                                                         default: false, null: false
  end

  add_index "T_SYSTEM_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_SETTINGS"

  create_table "T_SYSTEM_SSO_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.uuid     "TYPE_CV",                                            null: false
    t.string   "NAME",                  limit: 100,                  null: false
    t.string   "VALUE",                 limit: 1000
  end

  add_index "T_SYSTEM_SSO_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_SSO_SETTINGS"

  create_table "T_SYSTEM_V", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                              null: false
    t.string  "NAME",         limit: 500,                        null: false
    t.text    "VDATA",        limit: 2147483647,                 null: false
    t.text    "IDATA",        limit: 2147483647
    t.string  "ROLE_CSV",     limit: 1000
    t.boolean "IS_PROCESSED",                    default: false, null: false
  end

  add_index "T_SYSTEM_V", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_V"

  create_table "T_SYSTEM_WEBAPI_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.uuid     "TYPE_CV",                                            null: false
    t.string   "NAME",                  limit: 100,                  null: false
    t.string   "VALUE",                 limit: 1000,                 null: false
    t.string   "DESCRIPTION",           limit: 500
  end

  add_index "T_SYSTEM_WEBAPI_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_WEBAPI_SETTINGS"

  create_table "T_SYSTEM_WEB_APP_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.uuid     "TYPE_CV"
    t.boolean  "IS_TEST",                            default: true,  null: false
    t.string   "NAME",                  limit: 100,                  null: false
    t.string   "VALUE",                 limit: 1000
    t.boolean  "IS_ENCRYPTED",                       default: false, null: false
    t.string   "DESCRIPTION",           limit: 1000
  end

  add_index "T_SYSTEM_WEB_APP_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_WEB_APP_SETTINGS"

  create_table "T_SYSTEM_WEB_CUSTOM_CONTENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.text     "CONTENT",               limit: 2147483647,                 null: false
    t.string   "LANGUAGE_CODE",         limit: 10,                         null: false
    t.uuid     "SECTION_ID",                                               null: false
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP"
    t.boolean  "IS_DEFAULT",                                               null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
  end

  create_table "T_SYSTEM_WEB_SECURITY_PROTOCOL", primary_key: "ROW_ID", force: :cascade do |t|
    t.boolean "IsSSLv3Enabled", null: false
    t.boolean "IsTLSv10",       null: false
    t.boolean "IsTLSv11",       null: false
    t.boolean "IsTLSv12",       null: false
    t.uuid    "ID",             null: false
  end

  add_index "T_SYSTEM_WEB_SECURITY_PROTOCOL", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_WEB_SECURITY_PROTOCOL"

  create_table "T_SYSTEM_WEB_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                 null: false
    t.uuid     "CREATION_USER_ID",                                                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                                              null: false
    t.boolean  "IS_DELETED",                                                 default: false,         null: false
    t.string   "THEME_NAME",                              limit: 100
    t.string   "CUSTOM_PAGE_TITLE",                       limit: 100
    t.boolean  "IS_SSL_REQUIRED",                                            default: false,         null: false
    t.boolean  "IS_MAINTENANCE_MODE_ENABLED",                                default: false,         null: false
    t.boolean  "IS_FUSION_SIGN_UP_ENABLED",                                  default: false,         null: false
    t.boolean  "IS_FUSION_SIGN_ON_ENABLED",                                  default: true,          null: false
    t.boolean  "IS_CAS_SIGN_ON_ENABLED",                                     default: false,         null: false
    t.boolean  "IS_SHIBBOLETH_SIGN_ON_ENABLED",                              default: false,         null: false
    t.string   "LOCAL_CAPTION",                           limit: 100
    t.string   "LOCAL_DESCRIPTION",                       limit: 500
    t.string   "CAS_CAPTION",                             limit: 100
    t.string   "CAS_DESCRIPTION",                         limit: 500
    t.string   "CAS_LOGIN_URL",                           limit: 100
    t.string   "CAS_VALIDATION_URL",                      limit: 100
    t.string   "CAS_LOGOUT_URL",                          limit: 100
    t.string   "CAS_ELEMENT_NAME_FOR_ID",                 limit: 100
    t.string   "SHIBBOLETH_CAPTION",                      limit: 100
    t.string   "SHIBBOLETH_DESCRIPTION",                  limit: 500
    t.string   "SHIBBOLETH_REQUEST_HEADER_FOR_ID",        limit: 100
    t.string   "PARENT_WEBSITE_NAME",                     limit: 100
    t.string   "PARENT_WEBSITE_URL",                      limit: 100
    t.boolean  "IS_NIRSA_MODE_ENABLED",                                      default: false,         null: false
    t.boolean  "IS_MEMBERSHIP_RENEWAL_ENABLED",                              default: false,         null: false
    t.boolean  "SHOW_DEPENDENTS",                                            default: true,          null: false
    t.boolean  "SHOW_REGISTRATIONS",                                         default: true,          null: false
    t.boolean  "SHOW_MEMBERSHIPS",                                           default: true,          null: false
    t.boolean  "SHOW_LOCKER_SERVICES",                                       default: true,          null: false
    t.boolean  "SHOW_TOWEL_SERVICES",                                        default: true,          null: false
    t.boolean  "SHOW_FACILITY_RENTALS",                                      default: true,          null: false
    t.boolean  "SHOW_FACILITY_REQUESTS",                                     default: true,          null: false
    t.boolean  "SHOW_PARKING_PERMITS",                                       default: true,          null: false
    t.boolean  "SHOW_OUTSTANDING_EQUIPMENT",                                 default: true,          null: false
    t.string   "GOOGLE_ANALYTICS_TRACKING_CODE",          limit: 50
    t.uuid     "DEFAULT_ELIGIBILITY_TYPE_ID"
    t.string   "ACCOUNT_SIGN_UP_ID_NUMBER_HINT",          limit: 3000
    t.string   "EXTERNAL_URL_FOR_LOGIN_HELP",             limit: 100
    t.string   "EXTERNAL_URL_FOR_USERNAME_HELP",          limit: 100
    t.string   "EXTERNAL_URL_FOR_PASSWORD_HELP",          limit: 100
    t.uuid     "PAYMENT_PROCESSOR_EXTERNAL_ID_TYPE_ID"
    t.boolean  "IS_IMLEAGUES_INTEGRATION_ENABLED",                           default: false,         null: false
    t.uuid     "SOI_EXTERNAL_ID_TYPE_ID"
    t.string   "SOI_EMAIL_DOMAIN",                        limit: 100
    t.boolean  "SOI_IS_ELIGIBLE_BY_IMPORT",                                  default: false,         null: false
    t.boolean  "SOI_IS_ELIGIBLE_BY_MEMBERSHIP",                              default: false,         null: false
    t.text     "SOI_ELIGIBLE_MEMBERSHIP_TYPE_IDS",        limit: 2147483647
    t.boolean  "SOI_CAN_GET_EMAIL",                                          default: false,         null: false
    t.boolean  "SOI_CAN_GET_PHOTO",                                          default: false,         null: false
    t.string   "SITE_LOGO_URL",                           limit: 100
    t.boolean  "IS_PORTAL_LIVE",                                             default: false,         null: false
    t.datetime "PORTAL_LIVE_SINCE"
    t.uuid     "PAYMENT_PROCESSOR_TYPE_CV"
    t.nchar    "IS_PAYMENT_PROCESSOR_IN_TEST_MODE",       limit: 10,         default: "0         "
    t.boolean  "IS_SSL_REQUIRED_FOR_EXTERNAL_FILES",                         default: false,         null: false
    t.uuid     "COURSE_CATEGORY_VISIBILITY_TYPE_CV"
    t.boolean  "SHOW_EQUIPMENT_RESERVATIONS",                                default: true,          null: false
    t.boolean  "IS_MENUNAVBAR_STRETCHED",                                    default: false,         null: false
    t.boolean  "IS_CAS_TEST_MODE_ENABLED",                                   default: false,         null: false
    t.boolean  "IS_CAPTCHA_ENABLED",                                         default: true,          null: false
    t.boolean  "IS_SIGNIN_REQUIRED_FACILITY_RESERVATION",                    default: false,         null: false
    t.boolean  "SHOW_GUEST_PASSES",                                          default: true,          null: false
    t.boolean  "SHOW_ORDER_HISTORY",                                         default: true,          null: false
    t.boolean  "SHOW_FACILITY_ACCESS_HISTORY",                               default: true,          null: false
    t.boolean  "SSO_IS_IDENTIFIER_PADDING_ENABLED",                          default: false,         null: false
    t.boolean  "SSO_IS_USERNAME_MATCHING_ENABLED",                           default: false,         null: false
    t.string   "TWITTER_URL",                             limit: 500
    t.nchar    "TWITTER_WIDGET_ID",                       limit: 100
    t.string   "V2_THEME_NAME",                           limit: 100
    t.boolean  "USE_BQS_FOR_EMAIL",                                          default: false,         null: false
    t.boolean  "IS_SELF_CHECK_IN_ENABLED",                                   default: false,         null: false
    t.boolean  "SHOW_INVOICES",                                              default: false,         null: false
    t.string   "IMAGE_FOLDER_NAME",                       limit: 50,         default: "ImageFolder"
    t.nchar    "LANGUAGE",                                limit: 10,         default: "en-US",       null: false
    t.boolean  "SHOW_COURT_BOOKINGS",                                        default: true,          null: false
    t.integer  "BRIDGE_SESSION_TIME_OUT_MINUTES",         limit: 2,          default: 1440,          null: false
    t.integer  "LOGIN_MAX_NUMBER_OF_ATTEMPTS",            limit: 2,          default: 3,             null: false
    t.integer  "LOGIN_IGNORE_TIME_SECONDS",               limit: 2,          default: 300,           null: false
    t.boolean  "IS_FUSION_IM_ENABLED",                                       default: false,         null: false
    t.boolean  "SHOW_MULTIVISIT_PASSES",                                     default: true,          null: false
    t.boolean  "SHOW_PROGRAM_ATTENDANCE",                                    default: true,          null: false
  end

  add_index "T_SYSTEM_WEB_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_WEB_SETTINGS"

  create_table "T_SYSTEM_WEB_SITEMAP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.string   "TITLE",                 limit: 100,                  null: false
    t.string   "URL",                   limit: 200,                  null: false
    t.integer  "ORDINAL_POSITION",      limit: 4,    default: 0,     null: false
    t.boolean  "IS_SYSTEM",                          default: false, null: false
    t.boolean  "IS_ENABLED",                         default: false, null: false
    t.string   "DESCRIPTION",           limit: 1000
    t.string   "TARGET",                limit: 7
    t.uuid     "PARENT_ID"
    t.string   "TITLE_RESOURCE",        limit: 100
    t.string   "DESCRIPTION_RESOURCE",  limit: 100
    t.string   "IMAGE_SOURCE",          limit: 100
    t.boolean  "IS_PORTAL1",                         default: false, null: false
    t.boolean  "IS_PORTAL2",                         default: false, null: false
    t.boolean  "SHOW_SIDEBAR",                       default: true,  null: false
    t.boolean  "SHOW_ICON",                          default: true,  null: false
    t.boolean  "IS_ENABLED_V2",                      default: true,  null: false
    t.string   "SIDEBAR_GLYPHICON",     limit: 100
    t.uuid     "PRODUCTY_TYPE_CV"
  end

  add_index "T_SYSTEM_WEB_SITEMAP", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_WEB_SITEMAP"

  create_table "T_SYSTEM_WEB_THEME", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "NAME",                  limit: 100,                 null: false
  end

  add_index "T_SYSTEM_WEB_THEME", ["NAME"], name: "IX_T_SYSTEM_WEB_THEME", unique: true

  create_table "T_SYSTEM_WEB_THEME_CSS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.uuid     "THEME_ID",                                                 null: false
    t.integer  "ORDINAL_POSITION",      limit: 4,                          null: false
    t.text     "CSS",                   limit: 2147483647,                 null: false
    t.string   "NAME",                  limit: 50
  end

  create_table "T_SYSTEM_WEB_WIDGET_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.string   "NAME",                  limit: 100,                  null: false
    t.string   "VALUE",                 limit: 1000
    t.uuid     "TYPE_CV",                                            null: false
  end

  add_index "T_SYSTEM_WEB_WIDGET_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_SYSTEM_WEB_WIDGET_SETTINGS"

  create_table "T_TAX_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "NAME",                  limit: 100,                 null: false
    t.boolean  "IS_COMPOUNDED",                     default: false, null: false
    t.uuid     "TAX_REGION_ID",                                     null: false
    t.boolean  "IS_DEFAULT",                        default: false, null: false
  end

  add_index "T_TAX_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_TAX_GROUP"

  create_table "T_TAX_GROUP_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.uuid     "TAX_GROUP_ID",                                    null: false
    t.integer  "ORDINAL_POSITION",      limit: 4, default: 0,     null: false
    t.uuid     "TAX_TYPE_CV",                                     null: false
  end

  add_index "T_TAX_GROUP_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_TAX_GROUP_ITEM"

  create_table "T_TAX_ITEM", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                             null: false
    t.uuid     "CREATION_USER_ID",                                               null: false
    t.datetime "CREATION_TIMESTAMP",                                             null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                            null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                          null: false
    t.boolean  "IS_DELETED",                                     default: false, null: false
    t.uuid     "TAX_REGION_ID",                                                  null: false
    t.uuid     "TAX_TYPE_CV",                                                    null: false
    t.decimal  "RATE",                  precision: 10, scale: 3,                 null: false
    t.datetime "EFFECTIVE_DATE",                                                 null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_TAX_ITEM", ["ROW_ID"], name: "IX_ROW_ID_T_TAX_ITEM"

  create_table "T_TAX_REGION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "NAME",                  limit: 100,                 null: false
    t.boolean  "IS_DEFAULT",                                        null: false
  end

  add_index "T_TAX_REGION", ["ROW_ID"], name: "IX_ROW_ID_T_TAX_REGION"

  create_table "T_TAX_REGION_ASSIGNMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "TAX_REGION_ID",                         null: false
    t.uuid     "PARTY_ID",                              null: false
    t.datetime "EFFECTIVE_DATE",                        null: false
    t.datetime "UNTIL_DATE"
  end

  add_index "T_TAX_REGION_ASSIGNMENT", ["ROW_ID"], name: "IX_ROW_ID_T_TAX_REGION_ASSIGNMENT"

  create_table "T_TELEPHONE_NUMBER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.uuid     "TELEPHONE_TYPE_CV"
    t.uuid     "COUNTRY_CODE_CV"
    t.string   "PHONE_NUMBER",          limit: 50
    t.varchar  "EXTENSION",             limit: 6
    t.uuid     "CATEGORY_CV",                                      null: false
    t.uuid     "DELIVERY_OPTION_CV"
  end

  add_index "T_TELEPHONE_NUMBER", ["ROW_ID"], name: "IX_ROW_ID_T_TELEPHONE_NUMBER"

  create_table "T_TENDER_SUMMARY_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                    null: false
    t.uuid     "CREATION_USER_ID",                      null: false
    t.datetime "CREATION_TIMESTAMP",                    null: false
    t.uuid     "LAST_UPDATE_USER_ID",                   null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                 null: false
    t.boolean  "IS_DELETED",            default: false, null: false
    t.uuid     "COMPUTER_ID"
  end

  add_index "T_TENDER_SUMMARY_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_TENDER_SUMMARY_LOG"

  create_table "T_TENDER_SUMMARY_RECEIPT_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                          null: false
    t.uuid     "CREATION_USER_ID",                                            null: false
    t.datetime "CREATION_TIMESTAMP",                                          null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                         null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                       null: false
    t.boolean  "IS_DELETED",                                  default: false, null: false
    t.boolean  "TENDER_SUMMARY_RECEIPT_PRINT_CASH_BREAKDOWN", default: false, null: false
  end

  add_index "T_TENDER_SUMMARY_RECEIPT_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_TENDER_SUMMARY_RECEIPT_SETTINGS"

  create_table "T_THIRD_PARTY_PRICE_CATEGORY_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                       null: false
    t.uuid     "CREATION_USER_ID",                                         null: false
    t.datetime "CREATION_TIMESTAMP",                                       null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                      null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                    null: false
    t.boolean  "IS_DELETED",                               default: false, null: false
    t.boolean  "IS_SHALA_INTEGRATION_ENABLED",             default: false, null: false
    t.uuid     "PRIMARY_EXTERNAL_ID_TYPE_CV"
    t.nchar    "SERVICE_ENDPOINT",             limit: 150
    t.boolean  "IS_LOGGING_ENABLED",                       default: false, null: false
    t.nchar    "TOKEN",                        limit: 50
  end

  add_index "T_THIRD_PARTY_PRICE_CATEGORY_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_THIRD_PARTY_PRICE_CATEGORY_SETTINGS"

  create_table "T_TOWEL_AGREEMENT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                                            null: false
    t.uuid    "PRODUCT_ID",                                                                    null: false
    t.uuid    "SOLD_AT_ORGANIZATION_ID"
    t.uuid    "PRICE_ID"
    t.varchar "PROMOTION_CODE",             limit: 50
    t.uuid    "SEMESTER_ID"
    t.decimal "CALCULATED_PRICE",                      precision: 9, scale: 2
    t.boolean "IS_RENEWAL",                                                    default: false, null: false
    t.boolean "IS_RENEWED",                                                    default: false, null: false
    t.uuid    "RENEWED_TOWEL_AGREEMENT_ID"
  end

  add_index "T_TOWEL_AGREEMENT", ["ROW_ID"], name: "IX_ROW_ID_T_TOWEL_AGREEMENT"

  create_table "T_TOWEL_SERVICE_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.uuid     "CREATION_USER_ID",                                null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.uuid     "LAST_UPDATE_USER_ID",                             null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                           null: false
    t.boolean  "IS_DELETED",                      default: false, null: false
    t.integer  "EXPIRING_SOON_DAYS",    limit: 4
  end

  add_index "T_TOWEL_SERVICE_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_TOWEL_SERVICE_SETTINGS"

  create_table "T_TOWEL_SERVICE_TYPE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                null: false
    t.integer "NUMBER_OF_TOWELS",        limit: 4
    t.boolean "IS_AVAILABLE_TO_ANYONE",            default: false
    t.boolean "ALLOW_PRORATE_PRICE"
    t.boolean "PRORATE_PRICE_ON_REFUND"
  end

  add_index "T_TOWEL_SERVICE_TYPE", ["ROW_ID"], name: "IX_ROW_ID_T_TOWEL_SERVICE_TYPE"

  create_table "T_TRANSACTION_DETAIL", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                    null: false
    t.uuid     "TRANSACTION_ID",                                                                        null: false
    t.uuid     "ORGANIZATION_GL_ACCOUNT_BALANCE_ID",                                                    null: false
    t.decimal  "AMOUNT",                                       precision: 18, scale: 2,                 null: false
    t.char     "DEBIT_CREDIT_FLAG",                  limit: 1,                                          null: false
    t.uuid     "ASSOCIATED_WITH_DETAIL_ID"
    t.uuid     "INVOICE_ITEM_ID"
    t.uuid     "PAYMENT_ID"
    t.datetime "VOID_TIMESTAMP"
    t.boolean  "IS_VOID",                                                               default: false, null: false
    t.uuid     "VOIDED_BY_USER_ID"
    t.uuid     "BILLING_BATCH_ID"
    t.boolean  "IS_PAYMENT",                                                            default: false
  end

  add_index "T_TRANSACTION_DETAIL", ["AMOUNT"], name: "IX_T_TRANSACTION_DETAIL_AMOUNT"
  add_index "T_TRANSACTION_DETAIL", ["INVOICE_ITEM_ID"], name: "T_TRANSACTION_DETAIL_INVOICE_ITEM_ID"
  add_index "T_TRANSACTION_DETAIL", ["IS_VOID"], name: "T_TRANSACTION_DETAIL_IS_VOID"
  add_index "T_TRANSACTION_DETAIL", ["ORGANIZATION_GL_ACCOUNT_BALANCE_ID", "IS_VOID"], name: "T_TRANSACTION_DETAIL_ORGANIZATION_GL_ACCOUNT_BALANCE_ID_IS_VOID"
  add_index "T_TRANSACTION_DETAIL", ["ROW_ID"], name: "IX_ROW_ID_T_TRANSACTION_DETAIL"

  create_table "T_TRANSLATION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.uuid     "TRANSLATED_ITEM_ID",                                null: false
    t.uuid     "LANGUAGE_ID",                                       null: false
    t.varchar  "VALUE",                 limit: 100,                 null: false
  end

  add_index "T_TRANSLATION", ["ROW_ID"], name: "IX_ROW_ID_T_TRANSLATION"

  create_table "T_UNIT_OF_MEASURE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                 null: false
    t.uuid     "CREATION_USER_ID",                                   null: false
    t.datetime "CREATION_TIMESTAMP",                                 null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                              null: false
    t.boolean  "IS_DELETED",                         default: false, null: false
    t.varchar  "ABBREVIATION",           limit: 40
    t.varchar  "DESCRIPTION",            limit: 255,                 null: false
    t.uuid     "UOM_GROUP_ID"
    t.boolean  "IS_BASE_UNIT"
    t.boolean  "IS_SYSTEM",                          default: false, null: false
    t.boolean  "USE_CUSTOM_DATE_RANGES",             default: false, null: false
    t.uuid     "CUSTOM_DATE_RANGE_ID"
  end

  add_index "T_UNIT_OF_MEASURE", ["ROW_ID"], name: "IX_ROW_ID_T_UNIT_OF_MEASURE"

  create_table "T_UNIT_OF_MEASURE_CONVERSION", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                            null: false
    t.uuid     "CREATION_USER_ID",                                              null: false
    t.datetime "CREATION_TIMESTAMP",                                            null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                           null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                         null: false
    t.boolean  "IS_DELETED",                                    default: false, null: false
    t.uuid     "UOM_ID_TO",                                                     null: false
    t.uuid     "UOM_ID_FROM",                                                   null: false
    t.decimal  "CONVERSION_FACTOR",     precision: 9, scale: 4,                 null: false
  end

  add_index "T_UNIT_OF_MEASURE_CONVERSION", ["ROW_ID"], name: "IX_ROW_ID_T_UNIT_OF_MEASURE_CONVERSION"

  create_table "T_UNIT_OF_MEASURE_GROUP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID",                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.varchar  "NAME",                  limit: 50,                  null: false
    t.varchar  "DESCRIPTION",           limit: 255
  end

  add_index "T_UNIT_OF_MEASURE_GROUP", ["ROW_ID"], name: "IX_ROW_ID_T_UNIT_OF_MEASURE_GROUP"

  create_table "T_USERNAME_REQUEST", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                              null: false
    t.datetime "CREATION_TIMESTAMP",                              null: false
    t.string   "EMAIL_ADDRESS",       limit: 100,                 null: false
    t.integer  "RETURN_CODE",         limit: 4
    t.uuid     "USER_ID"
    t.boolean  "IS_INTERNAL_ACCOUNT",             default: false
  end

  add_index "T_USERNAME_REQUEST", ["ROW_ID"], name: "IX_ROW_ID_T_USERNAME_REQUEST"

  create_table "T_USER_ACCOUNT", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid      "ID",                                                                  null: false
    t.uuid      "CREATION_USER_ID"
    t.datetime  "CREATION_TIMESTAMP",                                                  null: false
    t.uuid      "LAST_UPDATE_USER_ID"
    t.datetime  "LAST_UPDATE_TIMESTAMP",                                               null: false
    t.boolean   "IS_DELETED",                                          default: false, null: false
    t.boolean   "IS_ACTIVE",                                           default: true,  null: false
    t.uuid      "PERSON_ID"
    t.boolean   "IS_SSO_USER",                                         default: false, null: false
    t.boolean   "IS_LDAP_USER",                                        default: false
    t.varchar   "USERNAME",                                limit: 100
    t.varbinary "PASSWORD",                                limit: 512
    t.boolean   "USE_DEFAULT_PASSWORD",                                default: false
    t.boolean   "IS_PASSWORD_CHANGE_REQUIRED",                         default: false, null: false
    t.boolean   "NOTIFY_ON_FACILITY_RESERVATION_REQUEST",              default: false, null: false
    t.uuid      "FACILITY_RESERVATION_PROFILE_ID"
    t.uuid      "EMAIL_ADDRESS_ID"
    t.datetime  "LAST_LOGIN_TIMESTAMP"
    t.uuid      "LAST_LOGIN_COMPUTER_ID"
    t.datetime  "TENDER_SUMMARY_LAST_PRINTED_TIMESTAMP"
    t.uuid      "TENDER_SUMMARY_LAST_PRINTED_COMPUTER_ID"
    t.string    "SHIFT4_CLERK_ID",                         limit: 5
  end

  add_index "T_USER_ACCOUNT", ["IS_DELETED", "PERSON_ID"], name: "Index_UserAccount_IsDeletedPersonId"
  add_index "T_USER_ACCOUNT", ["IS_DELETED", "USERNAME"], name: "T_USER_ACCOUNT_IS_DELETED_USERNAME_PERSON_ID"
  add_index "T_USER_ACCOUNT", ["PERSON_ID"], name: "T_USER_ACCOUNT_PERSON_ID"

  create_table "T_USER_LOGIN_HISTORY", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                               null: false
    t.uuid     "CREATION_USER_ID",                                 null: false
    t.datetime "CREATION_TIMESTAMP",                               null: false
    t.uuid     "LAST_UPDATE_USER_ID",                              null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                            null: false
    t.boolean  "IS_DELETED",                       default: false, null: false
    t.datetime "LOGIN_DATE",                                       null: false
    t.datetime "LOGOUT_DATE"
    t.uuid     "COMPUTER_ID"
    t.string   "APPLICATION_VERSION",   limit: 50
  end

  add_index "T_USER_LOGIN_HISTORY", ["CREATION_USER_ID", "LOGOUT_DATE", "COMPUTER_ID"], name: "IX_T_USER_LOGIN_HISTORY_CREATION_USER_ID_LOGOUT_DATE_COMPUTER_ID"
  add_index "T_USER_LOGIN_HISTORY", ["ROW_ID"], name: "IX_ROW_ID_T_USER_LOGIN_HISTORY"

  create_table "T_USER_PROFILE", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                        null: false
    t.uuid     "CREATION_USER_ID",                                          null: false
    t.datetime "CREATION_TIMESTAMP",                                        null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                       null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                     null: false
    t.boolean  "IS_DELETED",                                default: false, null: false
    t.uuid     "USER_ACCOUNT_ID",                                           null: false
    t.binary   "VALUE",                  limit: 2147483647
    t.uuid     "SECURITY_QUESTION_CV_1"
    t.varchar  "SECURITY_ANSWER_1",      limit: 50
    t.uuid     "SECURITY_QUESTION_CV_2"
    t.varchar  "SECURITY_ANSWER_2",      limit: 50
  end

  add_index "T_USER_PROFILE", ["ROW_ID"], name: "IX_ROW_ID_T_USER_PROFILE"

  create_table "T_VERIFONE_MX880", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                        null: false
    t.boolean "IS_IP_COMMUNICATION",                       default: false, null: false
    t.boolean "IS_SERIAL_COMMUNICATION",                   default: false, null: false
    t.string  "IP_ADDRESS",                    limit: 20
    t.integer "PORT",                          limit: 4
    t.integer "DATA_BITS",                     limit: 4
    t.integer "BAUD",                          limit: 4
    t.integer "TIMEOUT",                       limit: 4
    t.integer "SWIPE_TIMEOUT",                 limit: 4
    t.string  "CLIENT_ID",                     limit: 50
    t.string  "USER_ID",                       limit: 50
    t.string  "USER_PASSWORD",                 limit: 50
    t.string  "MERCHANT_KEY",                  limit: 50
    t.integer "LOGGING_LEVEL",                 limit: 4
    t.string  "URL",                           limit: 150
    t.boolean "IS_CREDIT_ENABLED",                         default: false, null: false
    t.boolean "IS_DEBIT_ENABLED",                          default: false, null: false
    t.boolean "IS_SIG_CAP_PROMPT_ENABLED",                 default: false, null: false
    t.boolean "IS_AMOUNT_CONF_PROMPT_ENABLED",             default: false, null: false
    t.boolean "IS_CASHBACK_PROMPT_ENABLED",                default: false, null: false
    t.integer "SERVER_PORT",                   limit: 4
    t.string  "SERVER_IP_ADDRESS",             limit: 20
  end

  add_index "T_VERIFONE_MX880", ["ROW_ID"], name: "IX_ROW_ID_T_VERIFONE_MX880"

  create_table "T_VERIFONE_VX810", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                     null: false
    t.string  "IP_ADDRESS",  limit: 20
    t.integer "PORT",        limit: 4
    t.string  "ECR_ID",      limit: 20
    t.string  "MERCHANT_ID", limit: 20
  end

  add_index "T_VERIFONE_VX810", ["ROW_ID"], name: "IX_ROW_ID_T_VERIFONE_VX810"

  create_table "T_WAIVER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                                                    null: false
    t.boolean  "IS_MIN_AGE_REQUIRED",                                  default: false,                                  null: false
    t.integer  "MIN_AGE",                                    limit: 4, default: 0,                                      null: false
    t.boolean  "IS_ACCEPTANCE_REQUIRED_FOR_FACILITY_ACCESS",           default: false,                                  null: false
    t.integer  "RENEWAL_WINDOW_DAYS",                        limit: 4, default: 0,                                      null: false
    t.datetime "ANNUAL_EXPIRY_DAY"
    t.uuid     "WAIVER_ACCEPTANCE_TYPE_CV",                            default: "00000000-0000-0000-0000-000000003898"
    t.boolean  "IS_ANNUAL_EXPIRY_DAY_MONTH_REQUIRED",                  default: false,                                  null: false
    t.boolean  "REQUIRED_PER_INSTANCE",                                default: false,                                  null: false
    t.boolean  "IS_ELIGIBLE_FOR_FUSION_IM",                            default: false,                                  null: false
  end

  add_index "T_WAIVER", ["ROW_ID"], name: "IX_T_WAIVER"

  create_table "T_WAIVER_RELATIONSHIP", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid    "ID",                                                null: false
    t.nchar   "IS_MIN_AGE_REQUIRED",    limit: 10
    t.nchar   "MIN_AGE",                limit: 10
    t.boolean "IS_ACCEPTANCE_REQUIRED",            default: false, null: false
    t.boolean "IS_SIGNATURE_REQUIRED",             default: false, null: false
  end

  add_index "T_WAIVER_RELATIONSHIP", ["ROW_ID"], name: "IX_T_WAIVER_RELATIONSHIP"

  create_table "T_WAIVER_SETTINGS", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                                null: false
    t.uuid     "CREATION_USER_ID",                                                  null: false
    t.datetime "CREATION_TIMESTAMP",                                                null: false
    t.uuid     "LAST_UPDATE_USER_ID",                                               null: false
    t.datetime "LAST_UPDATE_TIMESTAMP",                                             null: false
    t.boolean  "IS_DELETED",                                        default: false, null: false
    t.string   "SIGNATURE_CAPTURE_HUB_URL",             limit: 300
    t.boolean  "IS_SIGNATURE_CAPTURE_ENABLED_ONLINE",                               null: false
    t.boolean  "IS_SIGNATURE_CAPTURE_ENABLED_INPERSON",                             null: false
    t.boolean  "IS_CLICKWRAP_ENABLED_ONLINE",                                       null: false
    t.boolean  "IS_CLICKWRAP_ENABLED_INPERSON",                                     null: false
  end

  add_index "T_WAIVER_SETTINGS", ["ROW_ID"], name: "IX_ROW_ID_T_WAIVER_SETTINGS"

  create_table "T_WEB_USER_SIGN_IN_EVENT_LOG", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid     "ID",                                                null: false
    t.uuid     "CREATION_USER_ID"
    t.datetime "CREATION_TIMESTAMP",                                null: false
    t.uuid     "LAST_UPDATE_USER_ID"
    t.datetime "LAST_UPDATE_TIMESTAMP",                             null: false
    t.boolean  "IS_DELETED",                        default: false, null: false
    t.string   "USERNAME",              limit: 100
    t.string   "SSO_ID_NUMBER",         limit: 50
    t.boolean  "WAS_SUCCESSFUL",                    default: false, null: false
    t.uuid     "USER_ID"
    t.uuid     "SSO_TYPE"
    t.boolean  "IS_PORTAL_V1",                      default: true,  null: false
  end

  add_index "T_WEB_USER_SIGN_IN_EVENT_LOG", ["ROW_ID"], name: "IX_ROW_ID_T_WEB_USER_SIGN_IN_EVENT_LOG"

  create_table "T_WORKER", primary_key: "ROW_ID", force: :cascade do |t|
    t.uuid "ID", null: false
  end

  create_table "t_facility_access_event_histories", force: :cascade do |t|
    t.string   "first_name", limit: 4000
    t.string   "last_name",  limit: 4000
    t.integer  "person_id",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "t_facility_access_events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "t_people", force: :cascade do |t|
    t.string   "FIRST_NAME", limit: 4000
    t.string   "LAST_NAME",  limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "t_user_accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "T_ACCESS_MEDIA", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_ACCESS_MEDIA_T_PARTY_PARTY_ID"
  add_foreign_key "T_ACCESS_MEDIA", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_MEDIA_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ACCESS_MEDIA", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_MEDIA_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ACCESS_MEDIA_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_MEDIA_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ACCESS_MEDIA_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_MEDIA_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ACCESS_PROFILE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ACCESS_PROFILE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ACCESS_PROFILE_HARDWARE_DEVICE", "T_ACCESS_PROFILE", column: "ACCESS_PROFILE_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_HARDWARE_DEVICE_T_ACCESS_PROFILE_ACCESS_PROFILE_ID"
  add_foreign_key "T_ACCESS_PROFILE_HARDWARE_DEVICE", "T_ACCESS_PROFILE_HARDWARE_DEVICE", column: "ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_HARDWARE_DEVICE_T_ACCESS_PROFILE_HARDWARE_DEVICE"
  add_foreign_key "T_ACCESS_PROFILE_HARDWARE_DEVICE", "T_HARDWARE_DEVICE", column: "HARDWARE_DEVICE_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_HARDWARE_DEVICE_T_HARDWARE_DEVICE"
  add_foreign_key "T_ACCESS_PROFILE_HARDWARE_DEVICE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_HARDWARE_DEVICE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ACCESS_PROFILE_HARDWARE_DEVICE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_HARDWARE_DEVICE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ACCESS_PROFILE_TIME", "T_ACCESS_PROFILE", column: "ACCESS_PROFILE_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_TIME_T_ACCESS_PROFILE_ACCESS_PROFILE_ID"
  add_foreign_key "T_ACCESS_PROFILE_TIME", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_TIME_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ACCESS_PROFILE_TIME", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_PROFILE_TIME_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ACCESS_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ACCESS_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ACCESS_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ACCOUNTING_PERIOD", "T_ACCOUNTING_PERIOD", column: "PARENT_PERIOD_ID", primary_key: "ID", name: "FK_T_ACCOUNTING_PERIOD_T_ACCOUNTING_PERIOD"
  add_foreign_key "T_ACCOUNTING_PERIOD", "T_ORGANIZATION", column: "ORGANIZATION_ID", primary_key: "ID", name: "FK_T_ACCOUNTING_PERIOD_T_ORGANIZATION"
  add_foreign_key "T_ACCOUNTING_PERIOD", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCOUNTING_PERIOD_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ACCOUNTING_PERIOD", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ACCOUNTING_PERIOD_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ACCOUNTING_TRANSACTION", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_ACCOUNTING_TRANSACTION_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_ACCOUNTING_TRANSACTION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCOUNTING_TRANSACTION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ACCOUNTS_RECEIVABLE_SUBSIDIARY_ACCOUNT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ACCOUNTS_RECEIVABLE_SUBSIDIARY_ACCOUNT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ADDRESS", "T_CODE_VALUE", column: "ADDRESS_TYPE_CV", primary_key: "ID", name: "FK_T_ADDRESS_T_CODE_VALUE"
  add_foreign_key "T_ADDRESS", "T_CONTACT_MECHANISM", column: "ID", primary_key: "ID", name: "FK_T_ADDRESS_T_CONTACT_MECHANISM"
  add_foreign_key "T_ADDRESS", "T_GEOGRAPHIC_LOCATION", column: "COUNTRY_ID", primary_key: "ID", name: "FK_T_ADDRESS_COUNTRY_ID"
  add_foreign_key "T_ADDRESS", "T_GEOGRAPHIC_LOCATION", column: "PROVINCE_ID", primary_key: "ID", name: "FK_T_ADDRESS_PROVINCE_ID"
  add_foreign_key "T_ADDRESS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ADDRESS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ADDRESS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ADDRESS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AGE_BRACKET", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_AGE_BRACKET_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_AGE_BRACKET", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_AGE_BRACKET_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AGREEMENT", "T_CODE_VALUE", column: "AGREEMENT_TYPE_CV", primary_key: "ID", name: "FK_T_AGREEMENT_T_CODE_VALUE_AGREEMENT_TYPE_CV"
  add_foreign_key "T_AGREEMENT", "T_CODE_VALUE", column: "CLEANUP_METHOD_CV", primary_key: "ID", name: "FK_T_AGREEMENT_T_CODE_VALUE_CLEANUP_METHOD_CV"
  add_foreign_key "T_AGREEMENT", "T_CODE_VALUE", column: "INPUT_METHOD_CV", primary_key: "ID", name: "FK_T_AGREEMENT_T_CODE_VALUE_INPUT_METHOD_CV"
  add_foreign_key "T_AGREEMENT", "T_PARTY_RELATIONSHIP", column: "RELATIONSHIP_ID", primary_key: "ID", name: "FK_T_AGREEMENT_T_RELATIONSHIP"
  add_foreign_key "T_AGREEMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_AGREEMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AGREEMENT_ADJUSTMENT", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ADJUSTMENT_T_AGREEMENT"
  add_foreign_key "T_AGREEMENT_ADJUSTMENT", "T_AGREEMENT_ITEM", column: "AGREEMENT_ITEM_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ADJUSTMENT_T_AGREEMENT_ITEM"
  add_foreign_key "T_AGREEMENT_ADJUSTMENT", "T_CODE_VALUE", column: "ADJUST_TYPE_CV", primary_key: "ID", name: "FK_T_AGREEMENT_ADJUSTMENT_T_CODE_VALUE_ADJUST_TYPE_CV"
  add_foreign_key "T_AGREEMENT_ADJUSTMENT", "T_TAX_ITEM", column: "TAX_ITEM_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ADJUSTMENT_T_TAX_ITEM"
  add_foreign_key "T_AGREEMENT_ADJUSTMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ADJUSTMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_AGREEMENT_ADJUSTMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ADJUSTMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AGREEMENT_BILLING", "T_AGREEMENT", column: "ID", primary_key: "ID", name: "FK_T_AGREEMENT_BILLING_T_AGREEMENT_ID"
  add_foreign_key "T_AGREEMENT_BILLING", "T_BANK_ACCOUNT", column: "BANK_ACCOUNT_ID", primary_key: "ID", name: "FK_T_AGREEMENT_BILLING_T_BANK_ACCOUNT_BANK_ACCOUNT_ID"
  add_foreign_key "T_AGREEMENT_BILLING", "T_CODE_VALUE", column: "PAYMENT_TYPE_CV", primary_key: "ID", name: "FK_T_AGREEMENT_BILLING_T_CODE_VALUE_PAYMENT_TYPE_CV"
  add_foreign_key "T_AGREEMENT_BILLING", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_BILLING_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_AGREEMENT_BILLING", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_BILLING_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AGREEMENT_CHANGE_LOG", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_AGREEMENT_CHANGE_LOG_T_AGREEMENT_AGREEMENT_ID"
  add_foreign_key "T_AGREEMENT_CHANGE_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_CHANGE_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_AGREEMENT_CHANGE_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_CHANGE_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AGREEMENT_ITEM", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ITEM_T_AGREEMENT"
  add_foreign_key "T_AGREEMENT_ITEM", "T_AGREEMENT_ITEM", column: "PARENT_AGREEMENT_ITEM_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ITEM_T_AGREEMENT_ITEM_PARENT_AGREEMENT_ITEM_ID"
  add_foreign_key "T_AGREEMENT_ITEM", "T_CODE_VALUE", column: "AGREEMENT_ITEM_TYPE_CV", primary_key: "ID", name: "FK_T_AGREEMENT_ITEM_T_CODE_VALUE_AGREEMENT_ITEM_TYPE_CV"
  add_foreign_key "T_AGREEMENT_ITEM", "T_PRICE_COMPONENT", column: "DEFAULT_PRICE_COMPONENT_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ITEM_T_PRICE_COMPONENT_DEFAULT_PRICE_COMPONENT_ID"
  add_foreign_key "T_AGREEMENT_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_AGREEMENT_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AGREEMENT_ROLE", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ROLE_T_AGREEMENT"
  add_foreign_key "T_AGREEMENT_ROLE", "T_CODE_VALUE", column: "AGREEMENT_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_AGREEMENT_ROLE_T_CODE_VALUE_AGREEMENT_ROLE_TYPE_CV"
  add_foreign_key "T_AGREEMENT_ROLE", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ROLE_T_PARTY"
  add_foreign_key "T_AGREEMENT_ROLE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ROLE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_AGREEMENT_ROLE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_AGREEMENT_ROLE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AGREEMENT_STATUS", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_AGREEMENT_STATUS_T_AGREEMENT"
  add_foreign_key "T_AGREEMENT_STATUS", "T_CODE_VALUE", column: "AGREEMENT_STATUS_CV", primary_key: "ID", name: "FK_T_AGREEMENT_STATUS_T_CODE_VALUE_AGREEMENT_STATUS_CV"
  add_foreign_key "T_APPOINTMENT", "T_COURSE_OFFERING", column: "COURSE_OFFERING_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_T_COURSE_OFFERING_COURSE_OFFERING_ID"
  add_foreign_key "T_APPOINTMENT", "T_COURSE_OFFERING", column: "COURSE_OFFERING_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_T_COURSE_SECTION_COURSE_SECTION_ID"
  add_foreign_key "T_APPOINTMENT", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_T_FACILITY_FACILITY_ID"
  add_foreign_key "T_APPOINTMENT", "T_FACILITY_RENTAL_AGREEMENT", column: "FACILITY_RENTAL_AGREEMENT_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_T_FACILITY_RENTAL_AGREEMENT"
  add_foreign_key "T_APPOINTMENT", "T_IM_GAME", column: "RELATED_ENTITY_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_T_IM_GAME"
  add_foreign_key "T_APPOINTMENT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_APPOINTMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_APPOINTMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_APPOINTMENT_CHECK_IN", "T_APPOINTMENT_ROLE", column: "APPOINTMENT_ROLE_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_CHECKIN_T_APPOINTMENT_ROLE"
  add_foreign_key "T_APPOINTMENT_CHECK_IN", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_CHECKIN_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_APPOINTMENT_CHECK_IN", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_CHECKIN_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_APPOINTMENT_FACILITY", "T_APPOINTMENT", column: "APPOINTMENT_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_FACILITY_T_APPOINTMENT_APPOINTMENT_ID"
  add_foreign_key "T_APPOINTMENT_FACILITY", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_FACILITY_T_FACILITY_FACILITY_ID"
  add_foreign_key "T_APPOINTMENT_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_APPOINTMENT_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_APPOINTMENT_OCCURRENCE", "T_APPOINTMENT", column: "APPOINTMENT_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_OCCURRENCE_T_APPOINTMENT"
  add_foreign_key "T_APPOINTMENT_OCCURRENCE", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_OCCURRENCE_T_FACILITY"
  add_foreign_key "T_APPOINTMENT_OCCURRENCE_POPULATE_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_OCCURRENCE_POPULATE_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_APPOINTMENT_OCCURRENCE_POPULATE_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_OCCURRENCE_POPULATE_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_APPOINTMENT_ROLE", "T_APPOINTMENT", column: "APPOINTMENT_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_ROLE_T_APPOINTMENT_APPOINTMENT_ID"
  add_foreign_key "T_APPOINTMENT_ROLE", "T_CODE_VALUE", column: "APPOINTMENT_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_APPOINTMENT_ROLE_T_CODE_VALUE_APPOINTMENT_ROLE_TYPE_CV"
  add_foreign_key "T_APPOINTMENT_ROLE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_ROLE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_APPOINTMENT_ROLE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_ROLE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_APPOINTMENT_STATUS_HISTORY", "T_APPOINTMENT", column: "APPOINTMENT_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_STATUS_T_APPOINTMENT_APPOINTMENT_ID"
  add_foreign_key "T_APPOINTMENT_STATUS_HISTORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_STATUS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_APPOINTMENT_STATUS_HISTORY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_APPOINTMENT_STATUS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_AR_TRANSACTION_DETAIL", "T_ACCOUNTING_TRANSACTION", column: "TRANSACTION_ID", primary_key: "ID", name: "FK_T_AR_TRANSACTION_DETAIL_T_ACCOUNTING_TRANSACTION_TRANSACTION_ID"
  add_foreign_key "T_AR_TRANSACTION_DETAIL", "T_ACCOUNTS_RECEIVABLE_SUBSIDIARY_ACCOUNT", column: "AR_ACCOUNT_ID", primary_key: "ID", name: "FK_T_AR_TRANSACTION_DETAIL_T_ACCOUNTS_RECEIVABLE_SUBSIDIARY_ACCOUNT_AR_ACCOUNT_ID"
  add_foreign_key "T_AR_TRANSACTION_DETAIL", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_AR_TRANSACTION_DETAIL_T_COMPUTER_COMPUTER_ID"
  add_foreign_key "T_AR_TRANSACTION_DETAIL", "T_ORGANIZATION_GL_ACCOUNT_BALANCE", column: "ORGANIZATION_GL_ACCOUNT_BALANCE_ID", primary_key: "ID", name: "FK_T_AR_TRANSACTION_DETAIL_T_ORGANIZATION_GL_ACCOUNT_BALANCE_ORGANIZATION_GL_ACCOUNT_BALANCE_ID"
  add_foreign_key "T_AR_TRANSACTION_DETAIL", "T_TRANSACTION_DETAIL", column: "TRANSACTION_DETAIL_ID", primary_key: "ID", name: "FK_T_AR_TRANSACTION_DETAIL_T_TRANSACTION_DETAIL_TRANSACTION_DETAIL_ID"
  add_foreign_key "T_AR_TRANSACTION_DETAIL", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_AR_TRANSACTION_DETAIL_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ASSET", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_ASSET_T_PARTY"
  add_foreign_key "T_ASSET", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ASSET_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ASSET", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ASSET_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_BANK_ACCOUNT_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_BANK_ACCOUNT_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_BANK_ACCOUNT_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_BANK_ACCOUNT_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_BAR_CODE", "T_ACCESS_MEDIA_TYPE", column: "ID", primary_key: "ID", name: "FK_T_BAR_CODE_T_ACCESS_MEDIA_TYPE_ID"
  add_foreign_key "T_BASE_PRICE", "T_PRICE_COMPONENT", column: "ID", primary_key: "ID", name: "FK_T_BASE_PRICE_T_PRICE_COMPONENT"
  add_foreign_key "T_BILLING_ACCOUNT", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_BILLING_ACCOUNT_T_PARTY_PARTY_ID"
  add_foreign_key "T_BILLING_ACCOUNT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_BILLING_ACCOUNT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_BILLING_ACCOUNT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_BILLING_ACCOUNT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_BILLING_BATCH", "T_CODE_VALUE", column: "PAYMENT_TYPE_CV", primary_key: "ID", name: "FK_T_BILLING_BATCH_T_CODE_VALUE_PAYMENT_TYPE_CV"
  add_foreign_key "T_BILLING_BATCH", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_BILLING_BATCH_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_BILLING_BATCH", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_BILLING_BATCH_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_BILLING_BATCH_DETAIL", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_BILLING_BATCH_DETAIL_T_AGREEMENT_AGREEMENT_ID"
  add_foreign_key "T_BILLING_BATCH_DETAIL", "T_BILLING_BATCH", column: "BILLING_BATCH_ID", primary_key: "ID", name: "FK_T_BILLING_BATCH_DETAIL_T_BILLING_BATCH_BILLING_BATCH_ID"
  add_foreign_key "T_BILLING_BATCH_STAGING_INVOICE", "T_BILLING_BATCH", column: "BILLING_BATCH_ID", primary_key: "ID", name: "FK_T_BILLING_BATCH_STAGING_INVOICE_T_BILLING_BATCH_BILLING_BATCH_ID"
  add_foreign_key "T_BILLING_BATCH_STAGING_INVOICE", "T_BILLING_BATCH_DETAIL", column: "BILLING_BATCH_DETAIL_ID", primary_key: "ID", name: "FK_T_BILLING_BATCH_STAGING_INVOICE_T_BILLING_BATCH_DETAIL_BILLING_BATCH_DETAIL_ID"
  add_foreign_key "T_BILLING_BATCH_STAGING_INVOICE_ITEM", "T_BILLING_BATCH", column: "BILLING_BATCH_ID", primary_key: "ID", name: "FK_T_BILLING_BATCH_STAGING_INVOICE_ITEM_T_BILLING_BATCH_BILLING_BATCH_ID"
  add_foreign_key "T_BILLING_BATCH_STAGING_TRANSACTION_DETAIL", "T_BILLING_BATCH", column: "BILLING_BATCH_ID", primary_key: "ID", name: "FK_T_BILLING_BATCH_STAGING_TRANSACTION_DETAIL_T_BILLING_BATCH_BILLING_BATCH_ID"
  add_foreign_key "T_BLACKBOARD_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_BLACKBOARD_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_BLACKBOARD_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_BLACKBOARD_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_BLACKBOARD_TRANSACTION_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_BLACKBOARD_TRANSACTION_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_BLACKBOARD_TRANSACTION_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_BLACKBOARD_TRANSACTION_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_BRAND", "T_PRODUCT_FEATURE", column: "ID", primary_key: "ID", name: "FK_T_BRAND_T_PRODUCT_FEATURE"
  add_foreign_key "T_CALENDAR", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CALENDAR", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CALENDAR_ACTIVITY", "T_CALENDAR", column: "CALENDAR_ID", primary_key: "ID", name: "FK_T_CALENDAR_ACTIVITY_T_CALENDAR_CALENDAR_ID"
  add_foreign_key "T_CALENDAR_ACTIVITY", "T_CODE_VALUE", column: "ACTIVITY_TYPE_CV", primary_key: "ID", name: "FK_T_CALENDAR_ACTIVITY_T_CODE_VALUE_ACTIVITY_TYPE_CV"
  add_foreign_key "T_CALENDAR_ACTIVITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_ACTIVITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CALENDAR_ACTIVITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_ACTIVITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CALENDAR_FACILITY", "T_CALENDAR", column: "CALENDAR_ID", primary_key: "ID", name: "FK_T_CALENDAR_FACILITY_T_CALENDAR_CALENDAR_ID"
  add_foreign_key "T_CALENDAR_FACILITY", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_CALENDAR_FACILITY_T_FACILITY_FACILITY_ID"
  add_foreign_key "T_CALENDAR_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CALENDAR_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CALENDAR_FACILITY_TYPE", "T_CALENDAR", column: "CALENDAR_ID", primary_key: "ID", name: "FK_T_CALENDAR_FACILITY_TYPE_T_CALENDAR_CALENDAR_ID"
  add_foreign_key "T_CALENDAR_FACILITY_TYPE", "T_CODE_VALUE", column: "FACILITY_TYPE_CV", primary_key: "ID", name: "FK_T_CALENDAR_FACILITY_TYPE_T_CODE_VALUE_FACILITY_TYPE_CV"
  add_foreign_key "T_CALENDAR_FACILITY_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_FACILITY_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CALENDAR_FACILITY_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_FACILITY_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CALENDAR_PROGRAM", "T_CALENDAR", column: "CALENDAR_ID", primary_key: "ID", name: "FK_T_CALENDAR_PROGRAM_T_CALENDAR_CALENDAR_ID"
  add_foreign_key "T_CALENDAR_PROGRAM", "T_COURSE", column: "COURSE_ID", primary_key: "ID", name: "FK_T_CALENDAR_PROGRAM_T_COURSE_COURSE_ID"
  add_foreign_key "T_CALENDAR_PROGRAM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_PROGRAM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CALENDAR_PROGRAM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_PROGRAM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CALENDAR_PROGRAM_CLASSIFICATION", "T_CALENDAR", column: "CALENDAR_ID", primary_key: "ID", name: "FK_T_CALENDAR_PROGRAM_CLASSIFICATION_T_CALENDAR_CALENDAR_ID"
  add_foreign_key "T_CALENDAR_PROGRAM_CLASSIFICATION", "T_PROGRAM_CLASSIFICATION", column: "PROGRAM_CLASSIFICATION_ID", primary_key: "ID", name: "FK_T_CALENDAR_PROGRAM_CLASSIFICATION_T_PROGRAM_CLASSIFICATION_PROGRAM_CLASSIFICATION_ID"
  add_foreign_key "T_CALENDAR_PROGRAM_CLASSIFICATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_PROGRAM_CLASSIFICATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CALENDAR_PROGRAM_CLASSIFICATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CALENDAR_PROGRAM_CLASSIFICATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CAPTURE_DEVICE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CAPTURE_DEVICE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CAPTURE_DEVICE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CAPTURE_DEVICE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CASH_ACCOUNT", "T_ASSET", column: "ID", primary_key: "ID", name: "FK_T_CASH_ACCOUNT_T_ASSET_ID"
  add_foreign_key "T_CATALOGUE_ITEM", "T_CODE_VALUE", column: "ITEM_TYPE_CV", primary_key: "ID", name: "FK_T_CATALOGUE_ITEM_T_CODE_VALUE"
  add_foreign_key "T_CATALOGUE_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CATALOGUE_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CATALOGUE_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CATALOGUE_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CODE_VALUE", "T_CODE_VALUE", column: "PARENT_ID", primary_key: "ID", name: "FK_T_CODE_VALUE_T_CODE_VALUE"
  add_foreign_key "T_CODE_VALUE", "T_CODE_VALUE_GROUP", column: "GROUP_ID", primary_key: "ID", name: "FK_T_CODE_VALUE_T_CODE_VALUE_GROUP"
  add_foreign_key "T_CODE_VALUE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CODE_VALUE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CODE_VALUE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CODE_VALUE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CODE_VALUE_GROUP", "T_CODE_VALUE_GROUP", column: "PARENT_GROUP_ID", primary_key: "ID", name: "FK_T_CODE_VALUE_GROUP_T_CODE_VALUE_GROUP"
  add_foreign_key "T_CODE_VALUE_GROUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CODE_VALUE_GROUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CODE_VALUE_GROUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CODE_VALUE_GROUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COLOUR", "T_PRODUCT_FEATURE", column: "ID", primary_key: "ID", name: "FK_T_COLOUR_T_PRODUCT_FEATURE"
  add_foreign_key "T_COMMUNICATION_EVENT", "T_CODE_VALUE", column: "CONTACT_MECHANISM_TYPE_CV", primary_key: "ID", name: "FK_T_COMMUNICATION_EVENT_T_CODE_VALUE_CONTACT_MECHANISM_TYPE_CV"
  add_foreign_key "T_COMMUNICATION_EVENT", "T_CODE_VALUE", column: "PURPOSE_TYPE_CV", primary_key: "ID", name: "FK_T_COMMUNICATION_EVENT_T_CODE_VALUE_COMMUNICATION_EVENT_PURPOSE_TYPE_CV"
  add_foreign_key "T_COMMUNICATION_EVENT", "T_CODE_VALUE", column: "STATUS_CV", primary_key: "ID", name: "FK_T_COMMUNICATION_EVENT_T_CODE_VALUE_STATUS_CV"
  add_foreign_key "T_COMMUNICATION_EVENT", "T_PARTY", column: "FROM_PARTY_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_EVENT_T_PARTY_FROM_PARTY_ID"
  add_foreign_key "T_COMMUNICATION_EVENT", "T_PARTY", column: "TO_PARTY_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_EVENT_T_PARTY_TO_PARTY_ID"
  add_foreign_key "T_COMMUNICATION_EVENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_EVENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COMMUNICATION_EVENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_EVENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COMMUNICATION_SCHEDULED_TASK", "T_SCHEDULED_TASK", column: "ID", primary_key: "ID", name: "FK_T_COMMUNICATION_SCHEDULED_TASK_T_SCHEDULED_TASK_ID"
  add_foreign_key "T_COMMUNICATION_TASK", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_COMMUNICATION_TASK", "T_COMMUNICATION_TASK_CATEGORY", column: "CATEGORY_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_T_COMMUNICATION_TASK_CATEGORY_COMMUNICATION_TASK_CATEGORY_ID"
  add_foreign_key "T_COMMUNICATION_TASK", "T_EMAIL_TEMPLATE", column: "TEMPLATE_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_T_EMAIL_TEMPLATE_TEMPLATE_ID"
  add_foreign_key "T_COMMUNICATION_TASK", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CATEGORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CATEGORY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CATEGORY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CATEGORY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CATEGORY_ROLLUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CATEGORY_ROLLUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CATEGORY_ROLLUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CATEGORY_ROLLUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CRITERIA", "T_COMMUNICATION_TASK", column: "COMMUNICATION_TASK_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CRITERIA_T_COMMUNICATION_TASK_COMMUNICATION_TASK_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CRITERIA", "T_COMMUNICATION_TASK_LOCKER_SERVICE_CRITERIA", column: "ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CRITERIA_T_COMMUNICATION_TASK_LOCKER_SERVICE_CRITERIA_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CRITERIA", "T_COMMUNICATION_TASK_MEMBERSHIP_CRITERIA", column: "ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CRITERIA_T_COMMUNICATION_TASK_MEMBERSHIP_CRITERIA_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CRITERIA", "T_COMMUNICATION_TASK_REGISTRATION_CRITERIA", column: "ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CRITERIA_T_COMMUNICATION_TASK_REGISTRATION_CRITERIA_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CRITERIA", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CRITERIA_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_CRITERIA", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_CRITERIA_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_LOCKER_SERVICE_CRITERIA", "T_COMMUNICATION_TASK_LOCKER_SERVICE_TYPE", column: "ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_LOCKER_SERVICE_CRITERIA_T_COMMUNICATION_TASK_LOCKER_SERVICE_TYPE_ID"
  add_foreign_key "T_COMMUNICATION_TASK_MEMBERSHIP_CRITERIA", "T_COMMUNICATION_TASK_MEMBERSHIP_TYPE", column: "ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_MEMBERSHIP_CRITERIA_T_COMMUNICATION_TASK_MEMBERSHIP_TYPE_ID"
  add_foreign_key "T_COMMUNICATION_TASK_RECIPIENT", "T_COMMUNICATION_TASK", column: "COMMUNICATION_TASK_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_RECIPIENT_T_COMMUNICATION_TASK_COMMUNICATION_TASK_ID"
  add_foreign_key "T_COMMUNICATION_TASK_RECIPIENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_RECIPIENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_RECIPIENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_RECIPIENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COMMUNICATION_TASK_REGISTRATION_CRITERIA", "T_COMMUNICATION_TASK_COURSE_OFFERING", column: "ID", primary_key: "ID", name: "FK_T_COMMUNICATION_TASK_REGISTRATION_CRITERIA_T_COMMUNICATION_TASK_COURSE_OFFERING_ID"
  add_foreign_key "T_COMPUTER", "T_CODE_VALUE", column: "MAGNETIC_ENCODING_TYPE_CV", primary_key: "ID", name: "FK_T_COMPUTER_T_CODE_VALUE_MAGNETIC_ENCODING_TYPE_CV"
  add_foreign_key "T_COMPUTER", "T_CODE_VALUE", column: "STARTUP_WINDOW_CV", primary_key: "ID", name: "FK_T_COMPUTER_T_CODE_VALUE_STARTUP_WINDOW_CV"
  add_foreign_key "T_COMPUTER", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_COMPUTER_T_FACILITY_FACILITY_ID"
  add_foreign_key "T_COMPUTER", "T_POS_HOTKEY_PROFILE", column: "POS_HOTKEY_PROFILE_ID", primary_key: "ID", name: "FK_T_COMPUTER_T_POS_HOTKEY_PROFILE_POS_HOTKEY_PROFILE_ID"
  add_foreign_key "T_COMPUTER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COMPUTER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COMPUTER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COMPUTER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COMPUTER_SETTINGS", "T_CODE_VALUE", column: "COMPUTER_SETTING_CV", primary_key: "ID", name: "FK_T_COMPUTER_SETTINGS_T_CODE_VALUE_COMPUTER_SETTING_CV"
  add_foreign_key "T_COMPUTER_SETTINGS", "T_CODE_VALUE", column: "DATA_TYPE_CV", primary_key: "ID", name: "FK_T_COMPUTER_SETTINGS_T_CODE_VALUE_DATA_TYPE_CV"
  add_foreign_key "T_COMPUTER_SETTINGS", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_COMPUTER_SETTINGS_T_COMPUTER_COMPUTER_ID"
  add_foreign_key "T_COMPUTER_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COMPUTER_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COMPUTER_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COMPUTER_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CONTACT", "T_PARTY_ROLE", column: "ID", primary_key: "ID", name: "FK_T_CONTACT_T_PARTY_ROLE_ID"
  add_foreign_key "T_CONTACT_RELATIONSHIP", "T_CODE_VALUE", column: "CONTACT_RELATIONSHIP_TYPE_CV", primary_key: "ID", name: "FK_T_CONTACT_RELATIONSHIP_T_CODE_VALUE"
  add_foreign_key "T_CONTACT_RELATIONSHIP", "T_PARTY_RELATIONSHIP", column: "ID", primary_key: "ID", name: "FK_T_CONTACT_RELATIONSHIP_T_PARTY_RELATIONSHIP"
  add_foreign_key "T_COURSE", "T_CODE_VALUE", column: "REGISTRATION_PRIORITY_TYPE_CV", primary_key: "ID", name: "FK_T_COURSE_T_CODE_VALUE_REGISTRATION_PRIORITY_TYPE_CV"
  add_foreign_key "T_COURSE", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_COURSE_T_PRODUCT_ID"
  add_foreign_key "T_COURSE", "T_PROGRAM_CLASSIFICATION", column: "PROGRAM_CLASSIFICATION_ID", primary_key: "ID", name: "FK_T_COURSE_T_PROGRAM_CLASSIFICATION_PROGRAM_CLASSIFICATION_ID"
  add_foreign_key "T_COURSE_OFFERING", "T_COURSE", column: "COURSE_ID", primary_key: "ID", name: "FK_T_COURSE_OFFERING_T_COURSE_COURSE_ID"
  add_foreign_key "T_COURSE_PASS", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_COURSE_PASS_T_PRODUCT_ID"
  add_foreign_key "T_COURSE_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COURSE_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COURSE_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COURSE_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COURT_RESERVATION", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_COURT_RESERVATION_T_PRODUCT_ID"
  add_foreign_key "T_COURT_RESERVATION_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COURT_RESERVATION_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COURT_RESERVATION_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COURT_RESERVATION_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_COURT_RESERVATION_OPERATING_HOURS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_COURT_RESERVATION_OPERATING_HOURS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_COURT_RESERVATION_OPERATING_HOURS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_COURT_RESERVATION_OPERATING_HOURS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CUSTOMER", "T_ORGANIZATION_ROLE", column: "ID", primary_key: "ID", name: "FK_T_CUSTOMER_T_ORGANIZATION_ROLE_ID"
  add_foreign_key "T_CUSTOM_DATE_RANGE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CUSTOM_DATE_RANGE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CUSTOM_DATE_RANGE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CUSTOM_DATE_RANGE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CUSTOM_FIELD", "T_CODE_VALUE", column: "FIELD_TYPE_CV", primary_key: "ID", name: "FK_T_CUSTOM_FIELD_T_CODE_VALUE_FIELD_TYPE_CV"
  add_foreign_key "T_CUSTOM_FIELD", "T_CODE_VALUE", column: "RELATED_ENTITY_TYPE_CV", primary_key: "ID", name: "FK_T_CUSTOM_FIELD_T_CODE_VALUE_RELATED_ENTITY_TYPE_CV"
  add_foreign_key "T_CUSTOM_FIELD", "T_CODE_VALUE_GROUP", column: "CODE_VALUE_GROUP_ID", primary_key: "ID", name: "FK_T_CUSTOM_FIELD_T_CODE_VALUE_GROUP"
  add_foreign_key "T_CUSTOM_FIELD_SECURITY", "T_CODE_VALUE", column: "PERMISSION_TYPE_CV", primary_key: "ID", name: "FK_T_CUSTOM_FIELD_SECURITY_T_CODE_VALUE_PERMISSION_TYPE_CV"
  add_foreign_key "T_CUSTOM_FIELD_SECURITY", "T_CUSTOM_FIELD", column: "CUSTOM_FIELD_ID", primary_key: "ID", name: "FK_T_CUSTOM_FIELD_SECURITY_T_CUSTOM_FIELD_CUSTOM_FIELD_ID"
  add_foreign_key "T_CUSTOM_FIELD_SECURITY", "T_SECURITY_ROLE", column: "SECURITY_ROLE_ID", primary_key: "ID", name: "FK_T_CUSTOM_FIELD_SECURITY_T_SECURITY_ROLE_SECURITY_ROLE_ID"
  add_foreign_key "T_CUSTOM_FIELD_SECURITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_CUSTOM_FIELD_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CUSTOM_FIELD_SECURITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_CUSTOM_FIELD_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CUSTOM_FIELD_VALUE", "T_CUSTOM_FIELD", column: "CUSTOM_FIELD_ID", primary_key: "ID", name: "FK_T_CUSTOM_FIELD_VALUE_T_CUSTOM_FIELD"
  add_foreign_key "T_CUSTOM_PROMPT", "T_CODE_VALUE", column: "PROMPT_TYPE_CV", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_T_CODE_VALUE_PROMPT_TYPE_CV"
  add_foreign_key "T_CUSTOM_PROMPT", "T_CODE_VALUE_GROUP", column: "CODE_VALUE_GROUP_ID", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_T_CODE_VALUE_GROUP_CODE_VALUE_GROUP_ID"
  add_foreign_key "T_CUSTOM_PROMPT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_CUSTOM_PROMPT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CUSTOM_PROMPT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CUSTOM_PROMPT_VALUE", "T_CUSTOM_PROMPT", column: "CUSTOM_PROMPT_ID", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_VALUE_T_CUSTOM_PROMPT_CUSTOM_PROMPT_ID"
  add_foreign_key "T_CUSTOM_PROMPT_VALUE", "T_ORDER_ITEM", column: "ORDER_ITEM_ID", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_VALUE_T_ORDER_ITEM_ORDER_ITEM_ID"
  add_foreign_key "T_CUSTOM_PROMPT_VALUE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_VALUE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CUSTOM_PROMPT_VALUE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_CUSTOM_PROMPT_VALUE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_CUSTOM_REPORT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_CUSTOM_REPORT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_CUSTOM_REPORT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_CUSTOM_REPORT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_DIMENSION", "T_PRODUCT_FEATURE", column: "ID", primary_key: "ID", name: "FK_T_DIMENSION_T_PRODUCT_FEATURE"
  add_foreign_key "T_DISCOUNT_COMPONENT", "T_PRICE_COMPONENT", column: "ID", primary_key: "ID", name: "FK_T_DISCOUNT_COMPONENT_T_PRICE_COMPONENT"
  add_foreign_key "T_DOCUMENT_TEMPLATE", "T_CODE_VALUE", column: "DOCUMENT_TYPE_CV", primary_key: "ID", name: "FK_T_DOCUMENT_TEMPLATE_T_CODE_VALUE"
  add_foreign_key "T_DOCUMENT_TEMPLATE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_DOCUMENT_TEMPLATE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_DOCUMENT_TEMPLATE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_DOCUMENT_TEMPLATE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_DOCUMENT_TEMPLATE_HISTORY", "T_DOCUMENT_TEMPLATE", column: "ID", primary_key: "ID", name: "FK_T_DOCUMENT_TEMPLATE_HISTORY_T_DOCUMENT_TEMPLATE"
  add_foreign_key "T_DOCUMENT_TEMPLATE_RELATIONSHIP", "T_DOCUMENT_TEMPLATE", column: "DOCUMENT_TEMPLATE_ID", primary_key: "ID", name: "FK_T_DOCUMENT_TEMPLATE_RELATIONSHIP_T_DOCUMENT_TEMPLATE_DOCUMENT_TEMPLATE_ID"
  add_foreign_key "T_DOCUMENT_TEMPLATE_RELATIONSHIP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_DOCUMENT_TEMPLATE_RELATIONSHIP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_DOCUMENT_TEMPLATE_RELATIONSHIP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_DOCUMENT_TEMPLATE_RELATIONSHIP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_DURATION", "T_CODE_VALUE", column: "DURATION_TYPE_CV", primary_key: "ID", name: "FK_T_DURATION_T_CODE_VALUE_DURATION_TYPE_CV"
  add_foreign_key "T_DURATION", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_DURATION_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_DURATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_DURATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_DURATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_DURATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EFT_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EFT_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EFT_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EFT_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EMAIL_ADDRESS", "T_CODE_VALUE", column: "EMAIL_TYPE_CV", primary_key: "ID", name: "FK_T_EMAIL_ADDRESS_T_CODE_VALUE"
  add_foreign_key "T_EMAIL_ADDRESS", "T_CONTACT_MECHANISM", column: "ID", primary_key: "ID", name: "FK_T_EMAIL_ADDRESS_T_CONTACT_MECHANISM"
  add_foreign_key "T_EMAIL_ADDRESS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EMAIL_ADDRESS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EMAIL_ADDRESS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EMAIL_ADDRESS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EMAIL_ATTACHMENT", "T_OUTGOING_EMAIL", column: "EMAIL_ID", primary_key: "ID", name: "FK_T_EMAIL_ATTACHMENT_T_OUTGOING_EMAIL_EMAIL_ID"
  add_foreign_key "T_EMAIL_ATTACHMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EMAIL_ATTACHMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EMAIL_ATTACHMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EMAIL_ATTACHMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EMAIL_TEMPLATE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EMAIL_TEMPLATE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EMAIL_TEMPLATE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EMAIL_TEMPLATE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EMPLOYMENT", "T_CODE_VALUE", column: "TERMINATION_REASON_TYPE_CV", primary_key: "ID", name: "FK_T_EMPLOYMENT_T_CODE_VALUE_TERMINATION_REASON_TYPE_CV"
  add_foreign_key "T_EMPLOYMENT", "T_CODE_VALUE", column: "TERMINATION_TYPE_CV", primary_key: "ID", name: "FK_T_EMPLOYMENT_T_CODE_VALUE_TERMINATION_TYPE_CV"
  add_foreign_key "T_EMPLOYMENT", "T_PARTY_RELATIONSHIP", column: "ID", primary_key: "ID", name: "FK_T_EMPLOYMENT_T_PARTY_RELATIONSHIP"
  add_foreign_key "T_EMPLOYMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EMPLOYMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EMPLOYMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EMPLOYMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EQUIPMENT", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_EQUIPMENT_T_PRODUCT_ID"
  add_foreign_key "T_EQUIPMENT_ACCESS_GROUP", "T_ORGANIZATION_ROLE", column: "ID", primary_key: "ID", name: "FK_T_EQUIPMENT_ACCESS_GROUP_T_ORGANIZATION_ROLE_ID"
  add_foreign_key "T_EQUIPMENT_TRANSACTION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EQUIPMENT_TRANSACTION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EQUIPMENT_TRANSACTION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EQUIPMENT_TRANSACTION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EQUIPMENT_TRANSACTION_ITEM", "T_EQUIPMENT_TRANSACTION", column: "EQUIPMENT_TRANSACTION_ID", primary_key: "ID", name: "FK_T_EQUIPMENT_TRANSACTION_ITEM_T_EQUIPMENT_TRANSACTION_EQUIPMENT_TRANSACTION_ID"
  add_foreign_key "T_EQUIPMENT_TRANSACTION_ITEM", "T_INVENTORY_ITEM", column: "INVENTORY_ITEM_ID", primary_key: "ID", name: "FK_T_EQUIPMENT_TRANSACTION_ITEM_T_INVENTORY_ITEM_INVENTORY_ITEM_ID"
  add_foreign_key "T_EQUIPMENT_TRANSACTION_ITEM", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_EQUIPMENT_TRANSACTION_ITEM_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_EQUIPMENT_TRANSACTION_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EQUIPMENT_TRANSACTION_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EQUIPMENT_TRANSACTION_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EQUIPMENT_TRANSACTION_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ESTIMATED_PRODUCT_COST", "T_CODE_VALUE", column: "COST_COMPONENT_TYPE_CV", primary_key: "ID", name: "FK_T_ESTIMATED_PRODUCT_COST_T_CODE_VALUE_COST_COMPONENT_TYPE_CV"
  add_foreign_key "T_ESTIMATED_PRODUCT_COST", "T_GEOGRAPHIC_LOCATION", column: "GEOGRAPHIC_LOCATION_ID", primary_key: "ID", name: "FK_T_ESTIMATED_PRODUCT_COST_T_GEOGRAPHIC_LOCATION"
  add_foreign_key "T_ESTIMATED_PRODUCT_COST", "T_ORGANIZATION", column: "ORGANIZATION_ID", primary_key: "ID", name: "FK_T_ESTIMATED_PRODUCT_COST_T_ORGANIZATION"
  add_foreign_key "T_ESTIMATED_PRODUCT_COST", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_ESTIMATED_PRODUCT_COST_T_PRODUCT"
  add_foreign_key "T_ESTIMATED_PRODUCT_COST", "T_PRODUCT_FEATURE", column: "PRODUCT_FEATURE_ID", primary_key: "ID", name: "FK_T_ESTIMATED_PRODUCT_COST_T_PRODUCT_FEATURE"
  add_foreign_key "T_ESTIMATED_PRODUCT_COST", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ESTIMATED_PRODUCT_COST_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ESTIMATED_PRODUCT_COST", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ESTIMATED_PRODUCT_COST_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EVENT_SOUND", "T_CODE_VALUE", column: "EVENT_TYPE_CV", primary_key: "ID", name: "FK_T_EVENT_SOUND_T_CODE_VALUE_EVENT_TYPE_CV"
  add_foreign_key "T_EVENT_SOUND", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EVENT_SOUND_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EVENT_SOUND", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EVENT_SOUND_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_EXTERNAL_ACCOUNTING_TRANSACTION", "T_ACCOUNTING_TRANSACTION", column: "TRANSACTION_ID", primary_key: "ID", name: "FK_T_EXTERNAL_ACCOUNTING_TRANSACTION_T_ACCOUNTING_TRANSACTION"
  add_foreign_key "T_EXTERNAL_ACCOUNTING_TRANSACTION", "T_PARTY", column: "FROM_PARTY_ID", primary_key: "ID", name: "FK_T_EXTERNAL_ACCOUNTING_TRANSACTION_T_PARTY_FROM_PARTY_ID"
  add_foreign_key "T_EXTERNAL_ACCOUNTING_TRANSACTION", "T_PARTY", column: "TO_PARTY_ID", primary_key: "ID", name: "FK_T_EXTERNAL_ACCOUNTING_TRANSACTION_T_PARTY_TO_PARTY_ID"
  add_foreign_key "T_EXTERNAL_ID_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_EXTERNAL_ID_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_EXTERNAL_ID_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_EXTERNAL_ID_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_ACCESS_EVENT", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_FACILITY_ACCESS_EVENT_T_FACILITY"
  add_foreign_key "T_FACILITY_ACCESS_EVENT", "T_HARDWARE_DEVICE", column: "HARDWARE_DEVICE_ID", primary_key: "ID", name: "FK_T_FACILITY_ACCESS_EVENT_T_HARDWARE_DEVICE_HARDWARE_DEVICE_ID"
  add_foreign_key "T_FACILITY_ACCESS_EVENT", "T_PARTY", column: "PERSON_ID", primary_key: "ID", name: "FK_T_FACILITY_ACCESS_EVENT_T_PARTY_PERSON_ID"
  add_foreign_key "T_FACILITY_ACCESS_EVENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_ACCESS_EVENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_ACCESS_EVENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_ACCESS_EVENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_ACCESS_GROUP", "T_ORGANIZATION_ROLE", column: "ID", primary_key: "ID", name: "FK_T_FACILITY_ACCESS_GROUP_T_ORGANIZATION_ROLE_ID"
  add_foreign_key "T_FACILITY_ACCESS_IMPORT_STAGING", "T_CODE_VALUE", column: "ERROR_CV", primary_key: "ID", name: "FK_T_FACILITY_ACCESS_IMPORT_STAGING_T_CODE_VALUE_ERROR_CV"
  add_foreign_key "T_FACILITY_ACCESS_IMPORT_STAGING", "T_FACILITY_ACCESS_IMPORT_LOG", column: "IMPORT_LOG_ID", primary_key: "ID", name: "FK_T_FACILITY_ACCESS_IMPORT_STAGING_T_FACILITY_ACCESS_IMPORT_LOG_IMPORT_LOG_ID"
  add_foreign_key "T_FACILITY_ACTIVITY", "T_CODE_VALUE", column: "ACTIVITY_TYPE_CV", primary_key: "ID", name: "FK_T_FACILITY_ACTIVITY_T_CODE_VALUE_ACTIVITY_TYPE_CV"
  add_foreign_key "T_FACILITY_ACTIVITY", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_FACILITY_ACTIVITY_T_FACILITY_FACILITY_ID"
  add_foreign_key "T_FACILITY_ACTIVITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_ACTIVITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_ACTIVITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_ACTIVITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_CONTACT_MECHANISM", "T_CONTACT_MECHANISM", column: "CONTACT_MECHANISM_ID", primary_key: "ID", name: "FK_T_FACILITY_CONTACT_MECHANISM_T_CONTACT_MECHANISM"
  add_foreign_key "T_FACILITY_CONTACT_MECHANISM", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_FACILITY_CONTACT_MECHANISM_T_FACILITY"
  add_foreign_key "T_FACILITY_CONTACT_RELATIONSHIP", "T_CODE_VALUE", column: "ORGANIZATION_CONTACT_TYPE_CV", primary_key: "ID", name: "FK_T_FACILITY_CONTACT_RELATIONSHIP_T_CODE_VALUE_ORGANIZATION_CONTACT_TYPE_CV"
  add_foreign_key "T_FACILITY_CONTACT_RELATIONSHIP", "T_PARTY_FACILITY", column: "ID", primary_key: "ID", name: "FK_T_FACILITY_CONTACT_RELATIONSHIP_T_PARTY_FACILITY_ID"
  add_foreign_key "T_FACILITY_OPERATING_HOURS", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_FACILITY_OPERATING_HOURS_T_FACILITY_FACILITY_ID"
  add_foreign_key "T_FACILITY_OPERATING_HOURS", "T_OPERATING_HOURS", column: "OPERATING_HOURS_ID", primary_key: "ID", name: "FK_T_FACILITY_OPERATING_HOURS_T_OPERATING_HOURS_OPERATING_HOURS_ID"
  add_foreign_key "T_FACILITY_OPERATING_HOURS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_OPERATING_HOURS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_OPERATING_HOURS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_OPERATING_HOURS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_RENTAL_AGREEMENT", "T_AGREEMENT", column: "ID", primary_key: "ID", name: "FK_T_FACILITY_RENTAL_AGREEMENT_T_AGREEMENT"
  add_foreign_key "T_FACILITY_RENTAL_PRODUCT", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_FACILITY_RENTAL_PRODUCT_T_PRODUCT_ID"
  add_foreign_key "T_FACILITY_RENTAL_PRODUCT_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RENTAL_PRODUCT_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_RENTAL_PRODUCT_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RENTAL_PRODUCT_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_PROFILE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_PROFILE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_PROFILE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_PROFILE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_PROFILE_FACILITY", "T_FACILITY_RESERVATION_PROFILE", column: "FACILITY_RESERVATION_PROFILE_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_PROFILE_FACILITY_T_FACILITY_RESERVATION_PROFILE_FACILITY_RESERVATION_PROFILE_ID"
  add_foreign_key "T_FACILITY_RESERVATION_PROFILE_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_PROFILE_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_PROFILE_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_PROFILE_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_REQUEST", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_REQUEST_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_REQUEST", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_REQUEST_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_REQUEST_APPOINTMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_REQUEST_APPOINTMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_REQUEST_APPOINTMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_REQUEST_APPOINTMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_REQUEST_STATUS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_REQUEST_STATUS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FACILITY_RESERVATION_REQUEST_STATUS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FACILITY_RESERVATION_REQUEST_STATUS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FAMILY_RELATIONSHIP", "T_CODE_VALUE", column: "FAMILY_RELATIONSHIP_TYPE_CV", primary_key: "ID", name: "FK_T_FAMILY_RELATIONSHIP_T_CODE_VALUE_FAMILY_RELATIONSHIP_TYPE_CV"
  add_foreign_key "T_FAMILY_RELATIONSHIP", "T_PARTY_RELATIONSHIP", column: "ID", primary_key: "ID", name: "FK_T_FAMILY_RELATIONSHIP_T_PARTY_RELATIONSHIP"
  add_foreign_key "T_FORM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FORM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FORM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FORM_ANSWER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_ANSWER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM_ANSWER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_ANSWER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FORM_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_FORM_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_FORM_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FORM_ITEM_QUESTION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_QUESTION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM_ITEM_QUESTION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_QUESTION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FORM_QUESTION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_QUESTION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM_QUESTION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_QUESTION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FORM_QUESTION_ANSWER", "T_FORM_ANSWER", column: "ANSWER_ID", primary_key: "ID", name: "FK_T_IM_QUESTION_ANSWER_T_IM_ANSWER"
  add_foreign_key "T_FORM_QUESTION_ANSWER", "T_FORM_QUESTION", column: "QUESTION_ID", primary_key: "ID", name: "FK_T_IM_QUESTION_ANSWER_T_IM_QUESTION"
  add_foreign_key "T_FORM_QUESTION_ANSWER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_QUESTION_ANSWER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM_QUESTION_ANSWER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_QUESTION_ANSWER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FORM_QUIZ", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM_QUIZ", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FORM_RESULT", "T_FORM_QUIZ", column: "FORM_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_RESULT_T_IM_QUIZ"
  add_foreign_key "T_FORM_RESULT", "T_PERSON", column: "PARTY_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_RESULT_T_PERSON"
  add_foreign_key "T_FORM_RESULT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_RESULT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM_RESULT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_RESULT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_FORM_RESULT_QUESTION_ANSWER", "T_FORM_QUESTION_ANSWER", column: "ANSWER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_RESULT_QUESTION_ANSWER_T_IM_QUESTION_ANSWER"
  add_foreign_key "T_FORM_RESULT_QUESTION_ANSWER", "T_FORM_RESULT", column: "FORM_RESULT_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_RESULT_QUESTION_ANSWER_T_IM_QUIZ_RESULT"
  add_foreign_key "T_FORM_RESULT_QUESTION_ANSWER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_RESULT_QUESTION_ANSWER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_FORM_RESULT_QUESTION_ANSWER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_QUIZ_RESULT_QUESTION_ANSWER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_GENERAL_LEDGER_ACCOUNT", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_GENERAL_LEDGER_ACCOUNT_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_GENERAL_LEDGER_ACCOUNT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_GENERAL_LEDGER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_GENERAL_LEDGER_ACCOUNT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_GENERAL_LEDGER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_GEOGRAPHIC_LOCATION", "T_CODE_VALUE", column: "GEOGRAPHIC_LOCATION_TYPE_CV", primary_key: "ID", name: "FK_T_GEOGRAPHIC_LOCATION_T_CODE_VALUE"
  add_foreign_key "T_GEOGRAPHIC_LOCATION", "T_GEOGRAPHIC_LOCATION", column: "PARENT_GEO_LOC_ID", primary_key: "ID", name: "FK_T_GEOGRAPHIC_LOCATION_PARENT_GEO_LOC_ID"
  add_foreign_key "T_GEOGRAPHIC_LOCATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_GEOGRAPHIC_LOCATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_GEOGRAPHIC_LOCATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_GEOGRAPHIC_LOCATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_GLOBAL_SEARCH", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_GLOBAL_SEARCH_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_GLOBAL_SEARCH", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_GLOBAL_SEARCH_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_GOLF_CART", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_GOLF_CART_T_PRODUCT_ID"
  add_foreign_key "T_GOLF_CLOSURE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_GOLF_CLOSURE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_GOLF_CLOSURE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_GOLF_CLOSURE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_GOLF_COURSE", "T_FACILITY", column: "ID", primary_key: "ID", name: "FK_T_GOLF_COURSE_T_FACILITY"
  add_foreign_key "T_GOLF_RESERVATION", "T_CODE_VALUE", column: "NUMBER_OF_HOLES_CV", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_T_CODE_VALUE_NUMBER_OF_HOLES_CV"
  add_foreign_key "T_GOLF_RESERVATION", "T_GOLF_CLOSURE", column: "GOLF_CLOSURE_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_T_GOLF_CLOSURE"
  add_foreign_key "T_GOLF_RESERVATION", "T_GOLF_COURSE", column: "GOLF_COURSE_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_T_GOLF_COURSE_GOLF_COURSE_ID"
  add_foreign_key "T_GOLF_RESERVATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_GOLF_RESERVATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_GOLF_RESERVATION_ITEM", "T_GOLF_CART", column: "CART_PRODUCT_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_ITEM_T_GOLF_CART"
  add_foreign_key "T_GOLF_RESERVATION_ITEM", "T_GOLF_CLUB_SET", column: "CLUB_SET_PRODUCT_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_ITEM_T_GOLF_CLUB_SET"
  add_foreign_key "T_GOLF_RESERVATION_ITEM", "T_GOLF_RESERVATION", column: "GOLF_RESERVATION_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_ITEM_T_GOLF_RESERVATION_GOLF_RESERVATION_ID"
  add_foreign_key "T_GOLF_RESERVATION_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_GOLF_RESERVATION_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_GOLF_RESERVATION_ITEM_INVOICE_ITEM", "T_GOLF_RESERVATION_ITEM", column: "GOLF_RESERVATION_ITEM_ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_ITEM_INVOICE_ITEM_ID"
  add_foreign_key "T_GOLF_RESERVATION_ITEM_INVOICE_ITEM", "T_INVOICE_ITEM", column: "ID", primary_key: "ID", name: "FK_T_GOLF_RESERVATION_ITEM_INVOICE_ITEM"
  add_foreign_key "T_GOLF_SEASON", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_GOLF_SEASON_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_GOLF_SEASON", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_GOLF_SEASON_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_GREEN_FEE", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_GREEN_FEE_T_PRODUCT_ID"
  add_foreign_key "T_GROUP_PRICE", "T_PRICE_COMPONENT", column: "ID", primary_key: "ID", name: "FK_T_GROUP_PRICE_T_PRICE_COMPONENT_ID"
  add_foreign_key "T_GUEST_PASS", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_GUEST_PASS_T_PRODUCT"
  add_foreign_key "T_GUEST_PASS_INSTANCE", "T_GUEST_PASS", column: "GUEST_PASS_ID", primary_key: "ID", name: "FK_T_GUEST_PASS_INSTANCE_T_GUEST_PASS"
  add_foreign_key "T_GUEST_PASS_INSTANCE", "T_ORDER_ITEM", column: "ORDER_ITEM_ID", primary_key: "ID", name: "FK_T_GUEST_PASS_INSTANCE_T_ORDER_ITEM"
  add_foreign_key "T_GUEST_PASS_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_GUEST_PASS_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_GUEST_PASS_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_GUEST_PASS_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_HARDWARE_CONTROL_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_HARDWARE_CONTROL_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_HARDWARE_CONTROL_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_HARDWARE_CONTROL_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_HARDWARE_DEVICE", "T_CODE_VALUE", column: "CONNECTION_TYPE_CV", primary_key: "ID", name: "FK_T_READER_DEVICE_T_CODE_VALUE_CONNECTION_TYPE_CODE"
  add_foreign_key "T_HARDWARE_DEVICE", "T_CODE_VALUE", column: "HARDWARE_DEVICE_TYPE_CV", primary_key: "ID", name: "FK_T_READER_DEVICE_T_CODE_VALUE_READER_TYPE_CODE"
  add_foreign_key "T_HARDWARE_DEVICE", "T_CODE_VALUE", column: "READER_DEVICE_USAGE_TYPE_CV", primary_key: "ID", name: "FK_T_READER_DEVICE_T_CODE_VALUE_READER_USE_TYPE_CODE"
  add_foreign_key "T_HARDWARE_DEVICE", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_READER_DEVICE_T_COMPUTER_COMPUTER_ID"
  add_foreign_key "T_HARDWARE_DEVICE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_READER_DEVICE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_HARDWARE_DEVICE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_READER_DEVICE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ID_CARD", "T_PAPER_SIZE", column: "PAPER_SIZE_ID", primary_key: "ID", name: "FK_T_ID_CARD_T_PAPER_SIZE_PAPER_SIZE_ID"
  add_foreign_key "T_ID_CARD", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ID_CARD_LAYOUT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ID_CARD", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ID_CARD_LAYOUT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ID_CARD_ENCODING_TYPE", "T_ID_CARD", column: "ID_CARD_ID", primary_key: "ID", name: "FK_T_ID_CARD_ENCODING_TYPE_T_ID_CARD_ID_CARD_ID"
  add_foreign_key "T_ID_CARD_ENCODING_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ID_CARD_ENCODING_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ID_CARD_ENCODING_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ID_CARD_ENCODING_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ID_CARD_ITEM", "T_ID_CARD", column: "ID_CARD_ID", primary_key: "ID", name: "FK_T_ID_CARD_ITEM_T_ID_CARD_ID_CARD_ID"
  add_foreign_key "T_ID_CARD_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ID_CARD_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ID_CARD_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ID_CARD_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ID_NUMBER", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_ID_NUMBER_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_IMAGE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IMAGE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IMAGE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IMAGE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IMPORT_FORMAT", "T_MEMBERSHIP_TYPE", column: "ASSIGNMENT_MEMBERSHIP_TYPE_ID", primary_key: "ID", name: "FK_T_IMPORT_FORMAT_T_MEMBERSHIP_TYPE_ASSIGNMENT_MEMBERSHIP_TYPE_ID"
  add_foreign_key "T_IMPORT_FORMAT", "T_MEMBERSHIP_TYPE", column: "CLEANUP_MEMBERSHIP_TYPE_ID", primary_key: "ID", name: "FK_T_IMPORT_FORMAT_T_MEMBERSHIP_TYPE_CLEANUP_MEMBERSHIP_TYPE_ID"
  add_foreign_key "T_IMPORT_FORMAT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IMPORT_FORMAT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IMPORT_FORMAT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IMPORT_FORMAT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IMPORT_FORMAT_ITEM", "T_EXTERNAL_ID_TYPE", column: "EXTERNAL_ID_TYPE_CV", primary_key: "ID", name: "FK_T_IMPORT_FORMAT_ITEM_T_EXTERNAL_ID_TYPE_EXTERNAL_ID_TYPE_ID"
  add_foreign_key "T_IMPORT_FORMAT_ITEM", "T_IMPORT_FORMAT", column: "IMPORT_FORMAT_ID", primary_key: "ID", name: "FK_T_IMPORT_FORMAT_ITEM_T_IMPORT_FORMAT_IMPORT_FORMAT_ID"
  add_foreign_key "T_IMPORT_FORMAT_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IMPORT_FORMAT_ITEMS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IMPORT_FORMAT_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IMPORT_FORMAT_ITEMS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IMPORT_LOG", "T_IMPORT_FORMAT", column: "IMPORT_FORMAT_ID", primary_key: "ID", name: "FK_T_IMPORT_LOG_T_IMPORT_FORMAT_IMPORT_FORMAT_ID"
  add_foreign_key "T_IMPORT_LOG", "T_SCHEDULED_TASK_LOG", column: "TASK_LOG_ID", primary_key: "ID", name: "FK_T_IMPORT_LOG_T_SCHEDULED_TASK_LOG_TASK_LOG_ID"
  add_foreign_key "T_IMPORT_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IMPORT_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IMPORT_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IMPORT_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IMPORT_TASK", "T_IMPORT_FORMAT", column: "IMPORT_FORMAT_ID", primary_key: "ID", name: "FK_T_IMPORT_TASK_T_IMPORT_FORMAT"
  add_foreign_key "T_IMPORT_TASK", "T_SCHEDULED_TASK", column: "ID", primary_key: "ID", name: "FK_T_IMPORT_TASK_T_SCHEDULED_TASK"
  add_foreign_key "T_IM_GAME", "T_IM_SCHEDULE_SETUP", column: "SCHEDULE_SETUP_ID", primary_key: "ID", name: "FK_T_IM_GAME_T_IM_SCHEDULE_SETUP"
  add_foreign_key "T_IM_GAME", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_GAME_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_GAME", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_GAME_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_GAME_SLOT", "T_CODE_VALUE", column: "DAY_OF_WEEK_CV", primary_key: "ID", name: "FK_T_IM_GAME_SLOT_T_CODE_VALUE"
  add_foreign_key "T_IM_GAME_SLOT", "T_IM_LEAGUE_DIVISION", column: "LEAGUE_DIVISION_ID", primary_key: "ID", name: "FK_T_IM_GAME_SLOT_T_IM_LEAGUE_DIVISION"
  add_foreign_key "T_IM_GAME_SLOT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_GAME_SLOT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_GAME_SLOT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_GAME_SLOT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_GAME_TEAM", "T_IM_GAME", column: "GAME_ID", primary_key: "ID", name: "FK_T_IM_GAME_TEAM_T_IM_GAME"
  add_foreign_key "T_IM_GAME_TEAM", "T_IM_TEAM", column: "TEAM_ID", primary_key: "ID", name: "FK_T_IM_GAME_TEAM_T_IM_TEAM"
  add_foreign_key "T_IM_GAME_TEAM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_GAME_TEAM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_GAME_TEAM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_GAME_TEAM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_GENERAL_SETTINGS", "T_IM_RULE", column: "ROSTER_PLAYERS_ADDITION_DATE_LIMIT_RULE_ID", primary_key: "ID", name: "FK_T_IM_GENERAL_SETTINGS_T_IM_RULE"
  add_foreign_key "T_IM_GENERAL_SETTINGS", "T_IM_RULE", column: "ROSTER_PLAYERS_REMOVAL_DATE_LIMIT_RULE_ID", primary_key: "ID", name: "FK_T_IM_GENERAL_SETTINGS_T_IM_RULE1"
  add_foreign_key "T_IM_GENERAL_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_GENERAL_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_GENERAL_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_GENERAL_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_LEAGUE", "T_IM_RULE", column: "ROSTER_PLAYERS_ADDITION_DATE_LIMIT_RULE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_T_IM_RULE"
  add_foreign_key "T_IM_LEAGUE", "T_IM_RULE", column: "ROSTER_PLAYERS_REMOVAL_DATE_LIMIT_RULE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_T_IM_RULE1"
  add_foreign_key "T_IM_LEAGUE", "T_IM_SPORT", column: "SPORT_ID", primary_key: "ID", name: "FK_T_LEAGUE_T_SPORT_SPORT_ID"
  add_foreign_key "T_IM_LEAGUE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LEAGUE_T_USER_ACCOUNT"
  add_foreign_key "T_IM_LEAGUE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LEAGUE_T_USER_ACCOUNT1"
  add_foreign_key "T_IM_LEAGUE_DIVISION", "T_IM_LEAGUE", column: "LEAGUE_ID", primary_key: "ID", name: "FK_T_LEAGUE_DIVISION_T_LEAGUE"
  add_foreign_key "T_IM_LEAGUE_DIVISION", "T_IM_RULE", column: "ROSTER_PLAYERS_ADDITION_DATE_LIMIT_RULE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_T_IM_RULE"
  add_foreign_key "T_IM_LEAGUE_DIVISION", "T_IM_RULE", column: "ROSTER_PLAYERS_REMOVAL_DATE_LIMIT_RULE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_T_IM_RULE1"
  add_foreign_key "T_IM_LEAGUE_DIVISION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LEAGUE_DIVISION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_LEAGUE_DIVISION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LEAGUE_DIVISION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_LEAGUE_DIVISION_GENDER", "T_CODE_VALUE", column: "GENDER_CV", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_GENDER_T_CODE_VALUE"
  add_foreign_key "T_IM_LEAGUE_DIVISION_GENDER", "T_IM_LEAGUE_DIVISION", column: "LEAGUE_DIVISION_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_GENDER_T_IM_LEAGUE_DIVISION"
  add_foreign_key "T_IM_LEAGUE_DIVISION_GENDER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_GENDER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_LEAGUE_DIVISION_GENDER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_GENDER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE", "T_IM_LEAGUE_DIVISION", column: "LEAGUE_DIVISION_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE_T_IM_LEAGUE_DIVISION"
  add_foreign_key "T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE", "T_MEMBERSHIP_TYPE", column: "MEMBERSHIP_TYPE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE_T_MEMBERSHIP_TYPE"
  add_foreign_key "T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_DIVISION_MEMBERSHIP_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_LEAGUE_GENDER", "T_CODE_VALUE", column: "GENDER_CV", primary_key: "ID", name: "FK_T_IM_LEAGUE_GENDER_T_CODE_VALUE"
  add_foreign_key "T_IM_LEAGUE_GENDER", "T_IM_LEAGUE", column: "LEAGUE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_GENDER_T_IM_LEAGUE"
  add_foreign_key "T_IM_LEAGUE_GENDER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_GENDER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_LEAGUE_GENDER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_GENDER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_LEAGUE_MEMBERSHIP_TYPE", "T_IM_LEAGUE", column: "LEAGUE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_MEMBERSHIP_TYPE_T_IM_LEAGUE"
  add_foreign_key "T_IM_LEAGUE_MEMBERSHIP_TYPE", "T_MEMBERSHIP_TYPE", column: "MEMBERSHIP_TYPE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_MEMBERSHIP_TYPE_T_MEMBERSHIP_TYPE"
  add_foreign_key "T_IM_LEAGUE_MEMBERSHIP_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_MEMBERSHIP_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_LEAGUE_MEMBERSHIP_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_MEMBERSHIP_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_LEAGUE_TEAM_COLOR", "T_CODE_VALUE", column: "TEAM_COLOR_CV", primary_key: "ID", name: "FK_T_IM_LEAGUE_TEAM_COLOR_T_CODE_VALUE"
  add_foreign_key "T_IM_LEAGUE_TEAM_COLOR", "T_IM_LEAGUE", column: "LEAGUE_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_TEAM_COLOR_T_IM_LEAGUE"
  add_foreign_key "T_IM_LEAGUE_TEAM_COLOR", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_TEAM_COLOR_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_LEAGUE_TEAM_COLOR", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_TEAM_COLOR_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_RULE", "T_CODE_VALUE", column: "ABSOLUTE_OPTION_CV", primary_key: "ID", name: "FK_T_IM_RULE_T_CODE_VALUE"
  add_foreign_key "T_IM_RULE", "T_CODE_VALUE", column: "SEASON_MOMENT_CV", primary_key: "ID", name: "FK_T_IM_RULE_T_CODE_VALUE3"
  add_foreign_key "T_IM_RULE", "T_CODE_VALUE", column: "TIME_FRAME_CV", primary_key: "ID", name: "FK_T_IM_RULE_T_CODE_VALUE2"
  add_foreign_key "T_IM_RULE", "T_CODE_VALUE", column: "TIME_UNIT_CV", primary_key: "ID", name: "FK_T_IM_RULE_T_CODE_VALUE1"
  add_foreign_key "T_IM_RULE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_RULE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_RULE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_RULE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SCHEDULE_SETUP", "T_IM_LEAGUE", column: "LEAGUE_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_T_IM_LEAGUE"
  add_foreign_key "T_IM_SCHEDULE_SETUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SCHEDULE_SETUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SCHEDULE_SETUP_FACILITY", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_FACILITY_T_FACILITY"
  add_foreign_key "T_IM_SCHEDULE_SETUP_FACILITY", "T_IM_SCHEDULE_SETUP", column: "SCHEDULE_SETUP_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_FACILITY_T_IM_SCHEDULE_SETUP"
  add_foreign_key "T_IM_SCHEDULE_SETUP_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SCHEDULE_SETUP_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SCHEDULE_SETUP_TEAM", "T_IM_SCHEDULE_SETUP", column: "SCHEDULE_SETUP_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_TEAM_T_IM_SCHEDULE_SETUP"
  add_foreign_key "T_IM_SCHEDULE_SETUP_TEAM", "T_IM_TEAM", column: "TEAM_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_TEAM_T_IM_TEAM"
  add_foreign_key "T_IM_SCHEDULE_SETUP_TEAM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_TEAM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SCHEDULE_SETUP_TEAM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_SCHEDULE_SETUP_TEAM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SEASON", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LEAGUE_SEASON_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SEASON", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LEAGUE_SEASON_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SEASON_LEAGUE", "T_IM_LEAGUE", column: "LEAGUE_ID", primary_key: "ID", name: "FK_T_IM_SEASON_LEAGUE_T_IM_LEAGUE"
  add_foreign_key "T_IM_SEASON_LEAGUE", "T_IM_SEASON", column: "SEASON_ID", primary_key: "ID", name: "FK_T_IM_SEASON_LEAGUE_T_IM_SEASON1"
  add_foreign_key "T_IM_SEASON_LEAGUE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_SEASON_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SEASON_LEAGUE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_LEAGUE_SEASON_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SPORT", "T_CODE_VALUE", column: "PAYMENT_TIMING_CV", primary_key: "ID", name: "FK_T_SPORT_T_CODE_VALUE"
  add_foreign_key "T_IM_SPORT", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_IM_SPORT_T_PRODUCT"
  add_foreign_key "T_IM_SPORTSMANSHIP_RATING_SCALE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_SPORTSMANSHIP_RATING_SCALE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SPORTSMANSHIP_RATING_SCALE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_SPORTSMANSHIP_RATING_SCALE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SPORT_FORM", "T_FORM", column: "FORM_ID", primary_key: "ID", name: "FK_T_IM_SPORT_FORM_T_FORM"
  add_foreign_key "T_IM_SPORT_FORM", "T_IM_SPORT", column: "SPORT_ID", primary_key: "ID", name: "FK_T_IM_SPORT_FORM_T_IM_SPORT"
  add_foreign_key "T_IM_SPORT_FORM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_SPORT_FORM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SPORT_FORM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_SPORT_FORM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SPORT_TEAM_COLOR", "T_CODE_VALUE", column: "TEAM_COLOR_CV", primary_key: "ID", name: "FK_T_IM_SPORT_TEAM_COLOR_T_CODE_VALUE"
  add_foreign_key "T_IM_SPORT_TEAM_COLOR", "T_IM_SPORT", column: "SPORT_ID", primary_key: "ID", name: "FK_T_IM_SPORT_TEAM_COLOR_T_IM_SPORT"
  add_foreign_key "T_IM_SPORT_TEAM_COLOR", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_SPORT_TEAM_COLOR_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SPORT_TEAM_COLOR", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_SPORT_TEAM_COLOR_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SPORT_WAIVER", "T_IM_SPORT", column: "SPORT_ID", primary_key: "ID", name: "FK_T_IM_SPORT_WAIVER_T_IM_SPORT"
  add_foreign_key "T_IM_SPORT_WAIVER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_SPORT_WAIVER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_SPORT_WAIVER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_SPORT_WAIVER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_IM_SPORT_WAIVER", "T_WAIVER", column: "WAIVER_ID", primary_key: "ID", name: "FK_T_IM_SPORT_WAIVER_T_WAIVER"
  add_foreign_key "T_IM_TEAM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_IM_TEAM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_IM_TEAM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_IM_TEAM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INDIVIDUAL_PRICE", "T_PRICE_COMPONENT", column: "ID", primary_key: "ID", name: "FK_T_INDIVIDUAL_PRICE_T_PRICE_COMPONENT_ID"
  add_foreign_key "T_INSTRUCTOR", "T_PARTY_ROLE", column: "ID", primary_key: "ID", name: "FK_T_INSTRUCTOR_T_PARTY_ROLE_ID"
  add_foreign_key "T_INTEGRATION_PERSON_INFO", "T_PERSON", column: "INTERNAL_PERSON_ID", primary_key: "ID", name: "FK_T_INTEGRATION_PERSON_INFO_T_PERSON_INTERNAL_PERSON_ID"
  add_foreign_key "T_INTEGRATION_PERSON_INFO", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_INTEGRATION_PERSON_INFO_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INTEGRATION_PERSON_INFO", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_INTEGRATION_PERSON_INFO_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INTERNAL_ACCOUNTING_TRANSACTION", "T_ACCOUNTING_TRANSACTION", column: "TRANSACTION_ID", primary_key: "ID", name: "FK_T_INTERNAL_ACCOUNTING_TRANSACTION_T_ACCOUNTING_TRANSACTION"
  add_foreign_key "T_INTERNAL_ACCOUNTING_TRANSACTION", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_INTERNAL_ACCOUNTING_TRANSACTION_T_PARTY_PARTY_ID"
  add_foreign_key "T_INVENTORY_ITEM", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_T_FACILITY"
  add_foreign_key "T_INVENTORY_ITEM", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_INVENTORY_ITEM", "T_UNIT_OF_MEASURE", column: "UOM_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_T_UNIT_OF_MEASURE"
  add_foreign_key "T_INVENTORY_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM_CHANGE_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_CHANGE_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM_CHANGE_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_CHANGE_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM_COUNT", "T_INVENTORY_ITEM", column: "INVENTORY_ITEM_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_COUNT_T_INVENTORY_ITEM"
  add_foreign_key "T_INVENTORY_ITEM_COUNT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_COUNT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM_COUNT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_COUNT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM_HOLD", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_HOLD_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM_HOLD", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_HOLD_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM_VARIANCE", "T_CODE_VALUE", column: "INVENTORY_ITEM_VARIANCE_TYPE_CV", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_VARIANCE_T_CODE_VALUE_INVENTORY_ITEM_VARIANCE_TYPE_CV"
  add_foreign_key "T_INVENTORY_ITEM_VARIANCE", "T_INVENTORY_ITEM", column: "INVENTORY_ITEM_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_VARIANCE_T_INVENTORY_ITEM"
  add_foreign_key "T_INVENTORY_ITEM_VARIANCE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_VARIANCE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INVENTORY_ITEM_VARIANCE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_INVENTORY_ITEM_VARIANCE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INVESTMENT", "T_ASSET", column: "ID", primary_key: "ID", name: "FK_T_INVESTMENT_T_ASSET_ID"
  add_foreign_key "T_INVESTMENT", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_INVESTMENT_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_INVOICE", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_INVOICE_T_COMPUTER"
  add_foreign_key "T_INVOICE", "T_ORDER", column: "ORDER_ID", primary_key: "ID", name: "FK_T_INVOICE_T_ORDER"
  add_foreign_key "T_INVOICE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_INVOICE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INVOICE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_INVOICE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INVOICE_ITEM", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_INVOICE_ITEM_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_INVOICE_ITEM", "T_INVOICE", column: "INVOICE_ID", primary_key: "ID", name: "FK_T_INVOICE_ITEM_T_INVOICE"
  add_foreign_key "T_INVOICE_ITEM", "T_INVOICE_ITEM", column: "SOLD_WITH_ID", primary_key: "ID", name: "FK_T_INVOICE_ITEM_T_INVOICE_ITEM_SOLD_WITH_ID"
  add_foreign_key "T_INVOICE_ITEM", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_INVOICE_ITEM_T_PRODUCT"
  add_foreign_key "T_INVOICE_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_INVOICE_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INVOICE_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_INVOICE_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_INVOICE_ROLE", "T_CODE_VALUE", column: "INVOICE_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_INVOICE_ROLE_T_CODE_VALUE"
  add_foreign_key "T_INVOICE_ROLE", "T_INVOICE", column: "INVOICE_ID", primary_key: "ID", name: "FK_T_INVOICE_ROLE_T_INVOICE"
  add_foreign_key "T_INVOICE_ROLE", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_INVOICE_ROLE_T_PARTY"
  add_foreign_key "T_INVOICE_ROLE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_INVOICE_ROLE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_INVOICE_ROLE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_INVOICE_ROLE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ITEM_ISSUANCE", "T_INVENTORY_ITEM", column: "INVENTORY_ITEM_ID", primary_key: "ID", name: "FK_T_ITEM_ISSUANCE_T_INVENTORY_ITEM"
  add_foreign_key "T_ITEM_ISSUANCE", "T_SHIPMENT_PACKAGE", column: "SHIPMENT_PACKAGE_ID", primary_key: "ID", name: "FK_T_ITEM_ISSUANCE_T_SHIPMENT_PACKAGE"
  add_foreign_key "T_ITEM_ISSUANCE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ITEM_ISSUANCE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ITEM_ISSUANCE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ITEM_ISSUANCE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ITEM_VARIANCE_ACCOUNTING_TRANSACTION", "T_INTERNAL_ACCOUNTING_TRANSACTION", column: "TRANSACTION_ID", primary_key: "TRANSACTION_ID", name: "FK_ITEM_VARIANCE_ACCOUNTING_TRANSACTION_T_INTERNAL_ACCOUNTING_TRANSACTION"
  add_foreign_key "T_ITEM_VARIANCE_ACCOUNTING_TRANSACTION", "T_INVENTORY_ITEM_VARIANCE", column: "ITEM_VARIANCE_ID", primary_key: "ID", name: "FK_ITEM_VARIANCE_ACCOUNTING_TRANSACTION_T_INVENTORY_ITEM_VARIANCE"
  add_foreign_key "T_KIOSK_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_KIOSK_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_KIOSK_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_KIOSK_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_KIOSK_SETTINGS", "T_WAIVER", column: "SELF_REGISTRATION_WAIVER2_ID", primary_key: "ID", name: "FK_T_KIOSK_SETTINGS_T_WAIVER_SELF_REGISTRATION_WAIVER2_ID"
  add_foreign_key "T_KIOSK_SETTINGS", "T_WAIVER", column: "SELF_REGISTRATION_WAIVER_ID", primary_key: "ID", name: "FK_T_KIOSK_SETTINGS_T_WAIVER_WAIVER_ID"
  add_foreign_key "T_LANGUAGE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LANGUAGE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LANGUAGE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LANGUAGE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LIABILITY", "T_CODE_VALUE", column: "PAYMENT_FREQUENCY_TYPE_CV", primary_key: "ID", name: "FK_T_LIABILITY_T_CODE_VALUE_PAYMENT_FREQUENCY_TYPE_CV"
  add_foreign_key "T_LIABILITY", "T_CODE_VALUE", column: "PAYOFF_TYPE_CV", primary_key: "ID", name: "FK_T_LIABILITY_T_CODE_VALUE_PAYOFF_TYPE_CV"
  add_foreign_key "T_LIABILITY", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_LIABILITY_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_LIABILITY", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_LIABILITY_T_PARTY"
  add_foreign_key "T_LIABILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LIABILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LIABILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LIABILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LISTENER_GROUP", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_LISTENER_GROUP_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_LISTENER_GROUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LISTENER_GROUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LISTENER_GROUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LISTENER_GROUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LISTENER_GROUP_COMPUTER", "T_CODE_VALUE", column: "DEVICE_TYPE_CV", primary_key: "ID", name: "FK_T_LISTENER_GROUP_COMPUTER_T_CODE_VALUE_DEVICE_TYPE_CV"
  add_foreign_key "T_LISTENER_GROUP_COMPUTER", "T_LISTENER_GROUP", column: "LISTENER_GROUP_ID", primary_key: "ID", name: "FK_T_LISTENER_GROUP_COMPUTER_T_LISTENER_GROUP_LISTENER_GROUP_ID"
  add_foreign_key "T_LISTENER_GROUP_DEVICE", "T_CODE_VALUE", column: "DEVICE_TYPE_CV", primary_key: "ID", name: "FK_T_LISTENER_GROUP_DEVICE_T_CODE_VALUE_DEVICE_TYPE_CV"
  add_foreign_key "T_LISTENER_GROUP_DEVICE", "T_LISTENER_GROUP", column: "LISTENER_GROUP_ID", primary_key: "ID", name: "FK_T_LISTENER_GROUP_DEVICE_T_LISTENER_GROUP_LISTENER_GROUP_ID"
  add_foreign_key "T_LISTENER_GROUP_DEVICE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LISTENER_GROUP_DEVICE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LISTENER_GROUP_DEVICE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LISTENER_GROUP_DEVICE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LOCK", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LOCK_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LOCK", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LOCK_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LOCKER", "T_LOCKER_ROW", column: "LOCKER_ROW_ID", primary_key: "ID", name: "FK_T_LOCKER_T_LOCKER_ROW_LOCKER_ROW_ID"
  add_foreign_key "T_LOCKER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LOCKER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LOCKER_AGREEMENT", "T_AGREEMENT", column: "ID", primary_key: "ID", name: "FK_T_LOCKER_AGREEMENT_T_AGREEMENT_ID"
  add_foreign_key "T_LOCKER_AGREEMENT", "T_PRICE", column: "PRICE_ID", primary_key: "ID", name: "FK_T_LOCKER_AGREEMENT_T_PRICE_PRICE_ID"
  add_foreign_key "T_LOCKER_AGREEMENT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_LOCKER_AGREEMENT_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_LOCKER_AGREEMENT", "T_SEMESTER", column: "SEMESTER_ID", primary_key: "ID", name: "FK_T_LOCKER_AGREEMENT_T_SEMESTER_SEMESTER_ID"
  add_foreign_key "T_LOCKER_ASSIGNMENT", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_LOCKER_ASSIGNMENT_T_AGREEMENT_AGREEMENT_ID"
  add_foreign_key "T_LOCKER_ASSIGNMENT", "T_LOCKER", column: "LOCKER_ID", primary_key: "ID", name: "FK_T_LOCKER_ASSIGNMENT_T_LOCKER_LOCKER_ID"
  add_foreign_key "T_LOCKER_ASSIGNMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_ASSIGNMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LOCKER_ASSIGNMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_ASSIGNMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LOCKER_ROW", "T_LOCKER_SECTION", column: "LOCKER_SECTION_ID", primary_key: "ID", name: "FK_T_LOCKER_ROW_T_LOCKER_SECTION_LOCKER_SECTION_ID"
  add_foreign_key "T_LOCKER_ROW", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_ROW_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LOCKER_ROW", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_ROW_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LOCKER_SECTION", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_LOCKER_SECTION_T_FACILITY_FACILITY_ID"
  add_foreign_key "T_LOCKER_SECTION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_SECTION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LOCKER_SECTION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_SECTION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LOCKER_SERVICE_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_SERVICE_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LOCKER_SERVICE_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LOCKER_SERVICE_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LOCKER_SERVICE_TYPE", "T_CODE_VALUE", column: "LOCKER_TYPE_CV", primary_key: "ID", name: "FK_T_LOCKER_SERVICE_TYPE_T_CODE_VALUE_LOCKER_TYPE_CV"
  add_foreign_key "T_LOCKER_SERVICE_TYPE", "T_CODE_VALUE", column: "LOCK_ASSIGNMENT_TYPE_CV", primary_key: "ID", name: "FK_T_LOCKER_SERVICE_TYPE_T_CODE_VALUE_LOCK_ASSIGNMENT_TYPE_CV"
  add_foreign_key "T_LOCKER_SERVICE_TYPE", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_LOCKER_SERVICE_TYPE_T_PRODUCT_ID"
  add_foreign_key "T_LOCKER_SUMMARY", "T_LOCKER", column: "LOCKER_ID", primary_key: "ID", name: "FK_T_LOCKER_SUMMARY_T_LOCKER"
  add_foreign_key "T_LOCK_ASSIGNMENT", "T_LOCK", column: "LOCK_ID", primary_key: "ID", name: "FK_T_LOCK_ASSIGNMENT_T_LOCK_LOCK_ID"
  add_foreign_key "T_LOCK_ASSIGNMENT", "T_LOCKER", column: "LOCKER_ID", primary_key: "ID", name: "FK_T_LOCK_ASSIGNMENT_T_LOCKER_LOCKER_ID"
  add_foreign_key "T_LOCK_ASSIGNMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LOCK_ASSIGNMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LOCK_ASSIGNMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LOCK_ASSIGNMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_LOCK_COMBINATION", "T_LOCK", column: "LOCK_ID", primary_key: "ID", name: "FK_T_LOCK_COMBINATION_T_LOCK_LOCK_ID"
  add_foreign_key "T_LOCK_COMBINATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_LOCK_COMBINATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_LOCK_COMBINATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_LOCK_COMBINATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_MAG_STRIPE", "T_ACCESS_MEDIA_TYPE", column: "ID", primary_key: "ID", name: "FK_T_MAG_STRIPE_T_ACCESS_MEDIA_TYPE_ID"
  add_foreign_key "T_MAIN_ORGANIZATION", "T_ORGANIZATION", column: "ID", primary_key: "ID", name: "FK_T_MAIN_ORGANIZATION_T_ORGANIZATION_ID"
  add_foreign_key "T_MANUFACTURER_SUGGESTED_PRICE", "T_PRICE_COMPONENT", column: "ID", primary_key: "ID", name: "FK_T_MANUFACTURER_SUGGESTED_PRICE_T_PRICE_COMPONENT"
  add_foreign_key "T_MEMBER", "T_MEMBERSHIP_TYPE_ELIGIBILITY", column: "MEMBERSHIP_TYPE_ELIGIBILITY_ID", primary_key: "ID", name: "FK_T_MEMBER_T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP_TYPE_ELIGIBILITY_ID"
  add_foreign_key "T_MEMBER", "T_PARTY_ROLE", column: "ID", primary_key: "ID", name: "FK_T_MEMBER_T_PARTY_ROLE_ID"
  add_foreign_key "T_MEMBERSHIP_AGREEMENT", "T_AGREEMENT", column: "ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_AGREEMENT_T_AGREEMENT_ID"
  add_foreign_key "T_MEMBERSHIP_AGREEMENT", "T_PARTY", column: "SOLD_AT_ORGANIZATION_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_AGREEMENT_T_PARTY_SOLD_AT_ORGANIZATION_ID"
  add_foreign_key "T_MEMBERSHIP_AGREEMENT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_AGREEMENT_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_MEMBERSHIP_AGREEMENT", "T_SEMESTER", column: "SEMESTER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_AGREEMENT_T_SEMESTER_SEMESTER_ID"
  add_foreign_key "T_MEMBERSHIP_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_MEMBERSHIP_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE", "T_ACCESS_PROFILE", column: "ACCESS_PROFILE_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_T_ACCESS_PROFILE_ACCESS_PROFILE_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE", "T_ID_CARD", column: "ID_CARD_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_T_ID_CARD_ID_CARD_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_T_PRODUCT_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT", "T_IMPORT_FORMAT", column: "IMPORT_FORMAT_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT_T_IMPORT_FORMAT_IMPORT_FORMAT_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT", "T_MEMBERSHIP_TYPE_ELIGIBILITY", column: "MEMBERSHIP_TYPE_ELIGIBILITY_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT_T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP_TYPE_ELIGIBILITY_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_IMPORT_ASSIGNMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP", "T_MEMBERSHIP_TYPE", column: "MEMBERSHIP_TYPE_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP_T_MEMBERSHIP_TYPE_MEMBERSHIP_TYPE_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP", "T_MEMBERSHIP_TYPE_ELIGIBILITY", column: "MEMBERSHIP_TYPE_ELIGIBILITY_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP_T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP_ELIGIBILITY_TYPE_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_ELIGIBILITY_MEMBERSHIP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_FAMILY_RELATIONSHIP_RESTRICTION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_FAMILY_RELATIONSHIP_RESTRICTION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_MEMBERSHIP_TYPE_FAMILY_RELATIONSHIP_RESTRICTION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_MEMBERSHIP_TYPE_FAMILY_RELATIONSHIP_RESTRICTION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_MEMBER_SUSPENSION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_MEMBER_SUSPENSION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_MEMBER_SUSPENSION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_MEMBER_SUSPENSION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_MULTI_VISIT_PASS", "T_ID_CARD", column: "ID_CARD_ID", primary_key: "ID", name: "FK_T_MULTI_VISIT_PASS_T_ID_CARD_ID_CARD_ID"
  add_foreign_key "T_MULTI_VISIT_PASS", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_MULTI_VISIT_PASS_T_PRODUCT"
  add_foreign_key "T_MULTI_VISIT_PASS_INSTANCE", "T_MULTI_VISIT_PASS", column: "MULTI_VISIT_PASS_ID", primary_key: "ID", name: "FK_T_MULTI_VISIT_PASS_INSTANCE_T_MULTI_VISIT_PASS"
  add_foreign_key "T_MULTI_VISIT_PASS_INSTANCE", "T_ORDER_ITEM", column: "ORDER_ITEM_ID", primary_key: "ID", name: "FK_T_MULTI_VISIT_PASS_INSTANCE_T_ORDER_ITEM"
  add_foreign_key "T_MULTI_VISIT_PASS_INSTANCE", "T_PARTY", column: "CUSTOMER_PARTY_ID", primary_key: "ID", name: "FK_T_MULTI_VISIT_PASS_INSTANCE_T_PARTY"
  add_foreign_key "T_MULTI_VISIT_PASS_INSTANCE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_MULTI_VISIT_PASS_INSTANCE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_MULTI_VISIT_PASS_INSTANCE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_MULTI_VISIT_PASS_INSTANCE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_MULTI_VISIT_PASS_INSTANCE_HISTORY", "T_MULTI_VISIT_PASS_INSTANCE", column: "ID", primary_key: "ID", name: "FK_T_MULTI_VISIT_PASS_INSTANCE_HISTORY_T_MULTI_VISIT_PASS_INSTANCE_ID"
  add_foreign_key "T_NEWS_ITEM", "T_CODE_VALUE", column: "APPLICATION_VISIBILITY_TYPE_CV", primary_key: "ID", name: "FK_T_NEWS_ITEM_T_CODE_VALUE_APPLICATION_VISIBILITY_TYPE_CV"
  add_foreign_key "T_NEWS_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_NEWS_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_NEWS_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_NEWS_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_NIRSA_LEAD", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_NIRSA_LEADS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_NIRSA_LEAD", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_NIRSA_LEADS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_NOTE", "T_PARTY", column: "OWNER_PARTY_ID", primary_key: "ID", name: "FK_T_NOTE_T_PARTY"
  add_foreign_key "T_NOTE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_NOTE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_NOTE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_NOTE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_NOTE_ACKNOWLEDGEMENT_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_NOTE_ACKNOWLEDGMENT_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_NOTE_ACKNOWLEDGEMENT_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_NOTE_ACKNOWLEDGMENT_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ONECARD_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ONECARD_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ONECARD_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ONECARD_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_OPERATING_HOURS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_OPERATING_HOURS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_OPERATING_HOURS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_OPERATING_HOURS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_OPTIONAL_FEATURE", "T_PRODUCT_FEATURE_APPLICABILITY", column: "ID", primary_key: "ID", name: "FK_T_OPTIONAL_FEATURE_T_PRODUCT_FEATURE_APPLICABILITY"
  add_foreign_key "T_ORDER", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_ORDER_T_COMPUTER"
  add_foreign_key "T_ORDER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_ORDER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ORDER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_ORDER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ORDER_ADJUSTMENT", "T_CODE_VALUE", column: "ORDER_ADJUST_TYPE_CV", primary_key: "ID", name: "FK_T_ORDER_ADJUSTMENT_T_CODE_VALUE_ORDER_ADJUST_TYPE_CV"
  add_foreign_key "T_ORDER_ADJUSTMENT", "T_ORDER_ITEM", column: "ORDER_ITEM_ID", primary_key: "ID", name: "FK_T_ORDER_ADJUSTMENT_T_ORDER_ITEM_ORDER_ITEM_ID"
  add_foreign_key "T_ORDER_ADJUSTMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ADJUSTMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ORDER_ADJUSTMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ADJUSTMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ORDER_ITEM", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_T_AGREEMENT_AGREEMENT_ID"
  add_foreign_key "T_ORDER_ITEM", "T_ORDER", column: "ORDER_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_T_ORDER"
  add_foreign_key "T_ORDER_ITEM", "T_ORDER_ITEM", column: "REFUND_FOR_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_T_ORDER_ITEM_REFUND_FOR_ID"
  add_foreign_key "T_ORDER_ITEM", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_T_PRODUCT"
  add_foreign_key "T_ORDER_ITEM", "T_UNIT_OF_MEASURE", column: "UOM_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_T_UNIT_OF_MEASURE_UOM_ID"
  add_foreign_key "T_ORDER_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ORDER_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ORDER_ITEM_BILLING", "T_INVOICE_ITEM", column: "INVOICE_ITEM_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_BILLING_T_INVOICE_ITEM"
  add_foreign_key "T_ORDER_ITEM_BILLING", "T_ORDER_ITEM", column: "ORDER_ITEM_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_BILLING_T_ORDER_ITEM"
  add_foreign_key "T_ORDER_ITEM_BILLING", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_BILLING_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ORDER_ITEM_BILLING", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_BILLING_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ORDER_ITEM_ROLE", "T_ORDER_ITEM", column: "ORDER_ITEM_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_ROLE_T_ORDER_ITEM"
  add_foreign_key "T_ORDER_ITEM_ROLE", "T_ORDER_ITEM_ROLE_TYPE", column: "ORDER_ITEM_ROLE_TYPE_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_ROLE_T_ORDER_ITEM_ROLE_TYPE"
  add_foreign_key "T_ORDER_ITEM_ROLE", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_ROLE_T_PARTY"
  add_foreign_key "T_ORDER_ITEM_ROLE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_ROLE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ORDER_ITEM_ROLE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_ROLE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ORDER_ITEM_ROLE_TYPE", "T_ROLE_TYPE", column: "ID", primary_key: "ID", name: "FK_T_ORDER_ITEM_ROLE_TYPE_T_ROLE_TYPE"
  add_foreign_key "T_ORDER_NUMBER_HISTORY", "T_ORDER", column: "ID", primary_key: "ID", name: "FK_T_ORDER_NUMBER_HISTORY_T_ORDER_ID"
  add_foreign_key "T_ORDER_ROLE", "T_CODE_VALUE", column: "ORDER_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_ORDER_ROLE_T_CODE_VALUE_ORDER_ROLE_TYPE_CV"
  add_foreign_key "T_ORDER_ROLE", "T_ORDER", column: "ORDER_ID", primary_key: "ID", name: "FK_T_ORDER_ROLE_T_ORDER"
  add_foreign_key "T_ORDER_ROLE", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_ORDER_ROLE_T_PARTY"
  add_foreign_key "T_ORDER_ROLE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ROLE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ORDER_ROLE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ORDER_ROLE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ORDER_STATUS_HISTORY", "T_CODE_VALUE", column: "STATUS_CV", primary_key: "ID", name: "FK_T_ORDER_STATUS_HISTORY_T_CODE_VALUE_STATUS_CV"
  add_foreign_key "T_ORDER_STATUS_HISTORY", "T_ORDER", column: "ID", primary_key: "ID", name: "FK_T_ORDER_STATUS_HISTORY_T_ORDER_ID"
  add_foreign_key "T_ORDER_STATUS_HISTORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ORDER_STATUS_HISTORY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ORGANIZATION", "T_PARTY", column: "ID", primary_key: "ID", name: "FK_T_ORGANIZATION_T_PARTY_ID"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT", "T_GENERAL_LEDGER_ACCOUNT", column: "GENERAL_LEDGER_ACCOUNT_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_T_GENERAL_LEDGER_ACCOUNT"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT", "T_ORGANIZATION", column: "ORGANIZATION_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_T_ORGANIZATION_ORGANIZATION_ID"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT", "T_ORGANIZATION_GL_ACCOUNT", column: "PARENT_ORG_GL_ACCOUNT", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_T_ORGANIZATION_GL_ACCOUNT_PARENT_ORG_GL_ACCOUNT"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_T_PARTY_PARTY_ID"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT", "T_PAYMENT_METHOD_TYPE", column: "PAYMENT_METHOD_TYPE_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_T_PAYMENT_METHOD_TYPE_PAYMENT_METHOD_TYPE_ID"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT", "T_PRODUCT_CATEGORY", column: "PRODUCT_CATEGORY_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_T_PRODUCT_CATEGORY_PRODUCT_CATEGORY_ID"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT", "T_TAX_ITEM", column: "TAX_ITEM_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_T_TAX_ITEM"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT_BALANCE", "T_ACCOUNTING_PERIOD", column: "ACCOUNTING_PERIOD_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_BALANCE_T_ACCOUNTING_PERIOD_ACCOUNTING_PERIOD_ID"
  add_foreign_key "T_ORGANIZATION_GL_ACCOUNT_BALANCE", "T_ORGANIZATION_GL_ACCOUNT", column: "ORGANIZATION_GL_ACCOUNT_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_GL_ACCOUNT_BALANCE_T_ORGANIZATION_GL_ACCOUNTORGANIZATION_GL_ACCOUNT_ID"
  add_foreign_key "T_ORGANIZATION_OPERATING_HOURS", "T_OPERATING_HOURS", column: "OPERATING_HOURS_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_OPERATING_HOURS_T_OPERATING_HOURS_OPERATING_HOURS_ID"
  add_foreign_key "T_ORGANIZATION_OPERATING_HOURS", "T_ORGANIZATION", column: "PARTY_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_OPERATING_HOURS_T_ORGANIZATION_PARTY_ID"
  add_foreign_key "T_ORGANIZATION_OPERATING_HOURS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_OPERATING_HOURS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_ORGANIZATION_OPERATING_HOURS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_ORGANIZATION_OPERATING_HOURS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_ORGANIZATION_ROLE", "T_PARTY_ROLE", column: "ID", primary_key: "ID", name: "FK_T_ORGANIZATION_ROLE_T_PARTY_ROLE"
  add_foreign_key "T_OUTGOING_EMAIL", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_OUTGOING_EMAIL_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_OUTGOING_EMAIL", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_OUTGOING_EMAIL_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PAPER_SIZE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAPER_SIZE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAPER_SIZE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAPER_SIZE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARKING_PERMIT", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_PARKING_PERMIT_T_PRODUCT_ID"
  add_foreign_key "T_PARKING_PERMIT_INSTANCE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PARKING_PERMIT_INSTANCE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARKING_PERMIT_INSTANCE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PARKING_PERMIT_INSTANCE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY", "T_CODE_VALUE", column: "CREDIT_TERMS_TYPE_CV", primary_key: "ID", name: "FK_T_PARTY_T_CODE_VALUE_CREDIT_TERMS_TYPE_CV"
  add_foreign_key "T_PARTY", "T_CODE_VALUE", column: "PARTY_TYPE_CV", primary_key: "ID", name: "FK_T_PARTY_T_CODE_VALUE_PARTY_TYPE_CV"
  add_foreign_key "T_PARTY", "T_CODE_VALUE_GROUP", column: "PARTY_TYPE_CV", primary_key: "ID", name: "FK_T_PARTY_T_CODE_VALUE_GROUP"
  add_foreign_key "T_PARTY", "T_LANGUAGE", column: "LANGUAGE_ID", primary_key: "ID", name: "FK_T_PARTY_T_LANGUAGE"
  add_foreign_key "T_PARTY_CONTACT_MECHANISM", "T_CONTACT_MECHANISM", column: "CONTACT_MECHANISM_ID", primary_key: "ID", name: "FK_T_PARTY_CONTACT_MECHANISM_T_CONTACT_MECHANISM"
  add_foreign_key "T_PARTY_CONTACT_MECHANISM", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PARTY_CONTACT_MECHANISM_T_PARTY"
  add_foreign_key "T_PARTY_CONTACT_MECHANISM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PARTY_CONTACT_MECHANISM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARTY_CONTACT_MECHANISM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PARTY_CONTACT_MECHANISM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY_EXTERNAL_ID", "T_EXTERNAL_ID_TYPE", column: "EXTERNAL_ID_TYPE_ID", primary_key: "ID", name: "FK_T_PARTY_EXTERNAL_ID_T_EXTERNAL_ID_TYPE_EXTERNAL_ID_TYPE_ID"
  add_foreign_key "T_PARTY_EXTERNAL_ID", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PARTY_EXTERNAL_ID_T_PARTY_PARTY_ID"
  add_foreign_key "T_PARTY_EXTERNAL_ID", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PARTY_EXTERNAL_ID_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARTY_EXTERNAL_ID", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PARTY_EXTERNAL_ID_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY_FACILITY", "T_CODE_VALUE", column: "FACILITY_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_PARTY_FACILITY_T_CODE_VALUE"
  add_foreign_key "T_PARTY_FACILITY", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_PARTY_FACILITY_T_FACILITY"
  add_foreign_key "T_PARTY_FACILITY", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PARTY_FACILITY_T_PARTY"
  add_foreign_key "T_PARTY_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PARTY_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARTY_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PARTY_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY_QUALIFICATION", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PARTY_QUALIFICATION_T_PARTY_PARTY_ID"
  add_foreign_key "T_PARTY_QUALIFICATION", "T_QUALIFICATION_TYPE", column: "QUALIFICATION_TYPE_ID", primary_key: "ID", name: "FK_T_PARTY_QUALIFICATION_T_QUALIFICATION_TYPE_QUALIFICATION_TYPE_ID"
  add_foreign_key "T_PARTY_QUALIFICATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PARTY_QUALIFICATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARTY_QUALIFICATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PARTY_QUALIFICATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY_RELATIONSHIP", "T_CODE_VALUE", column: "PARTY_RELATIONSHIP_STATUS_TYPE_CV", primary_key: "ID", name: "FK_T_RELATIONSHIP_T_CODE_VALUE_RELATIONSHIP_STATUS_TYPE_CV"
  add_foreign_key "T_PARTY_RELATIONSHIP", "T_PARTY_RELATIONSHIP_TYPE", column: "PARTY_RELATIONSHIP_TYPE_ID", primary_key: "ID", name: "FK_T_PARTY_RELATIONSHIP_T_PARTY_RELATIONSHIP_TYPE_PARTY_RELATIONSHIP_TYPE_ID"
  add_foreign_key "T_PARTY_RELATIONSHIP", "T_PARTY_ROLE", column: "FROM_PARTY_ROLE_ID", primary_key: "ID", name: "FK_T_RELATIONSHIP_T_PARTY_ROLE_FROM_PARTY_ROLE_ID"
  add_foreign_key "T_PARTY_RELATIONSHIP", "T_PARTY_ROLE", column: "TO_PARTY_ROLE_ID", primary_key: "ID", name: "FK_T_RELATIONSHIP_T_PARTY_ROLE_TO_PARTY_ROLE_ID"
  add_foreign_key "T_PARTY_RELATIONSHIP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_RELATIONSHIP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARTY_RELATIONSHIP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_RELATIONSHIP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY_RELATIONSHIP_TYPE", "T_CODE_VALUE", column: "FROM_PARTY_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_RELATIONSHIP_TYPE_T_CODE_VALUE_FROM_PARTY_ROLE_TYPE_CV"
  add_foreign_key "T_PARTY_RELATIONSHIP_TYPE", "T_CODE_VALUE", column: "TO_PARTY_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_RELATIONSHIP_TYPE_T_CODE_VALUE_TO_PARTY_ROLE_TYPE_CV"
  add_foreign_key "T_PARTY_RELATIONSHIP_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_RELATIONSHIP_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARTY_RELATIONSHIP_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_RELATIONSHIP_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY_ROLE", "T_CODE_VALUE", column: "PARTY_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_PARTY_ROLE_T_CODE_VALUE"
  add_foreign_key "T_PARTY_ROLE", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PARTY_ROLE_T_PARTY"
  add_foreign_key "T_PARTY_ROLE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PARTY_ROLE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARTY_ROLE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PARTY_ROLE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY_WAIVER", "T_CODE_VALUE", column: "CONTEXT_TYPE_CV", primary_key: "ID", name: "FK_T_PARTY_WAIVER_T_CODE_VALUE_CONTEXT_TYPE_CV"
  add_foreign_key "T_PARTY_WAIVER", "T_CODE_VALUE", column: "STATUS_TYPE_CV", primary_key: "ID", name: "FK_T_PARTY_WAIVER_T_CODE_VALUE_STATUS_TYPE_CV"
  add_foreign_key "T_PARTY_WAIVER", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PARTY_WAIVER_T_PARTY_PARTY_ID"
  add_foreign_key "T_PARTY_WAIVER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PARTY_WAIVER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PARTY_WAIVER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PARTY_WAIVER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PARTY_WAIVER", "T_WAIVER", column: "WAIVER_ID", primary_key: "ID", name: "FK_T_PARTY_WAIVER_T_WAIVER_WAIVER_ID"
  add_foreign_key "T_PASSWORD_POLICY", "T_CODE_VALUE", column: "USER_ACCOUNT_TYPE_CV", primary_key: "ID", name: "FK_T_PASSWORD_POLICY_T_CODE_VALUE"
  add_foreign_key "T_PASSWORD_POLICY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PASSWORD_POLICY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PASSWORD_POLICY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PASSWORD_POLICY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PASSWORD_RESET_REQUEST", "T_USER_ACCOUNT", column: "USER_ID", primary_key: "ID", name: "FK_T_PASSWORD_RESET_REQUEST_T_USER_ACCOUNT_USER_ID"
  add_foreign_key "T_PAYMENT", "T_PARTY", column: "PAYOR_PARTY_ID", primary_key: "ID", name: "FK_T_PAYMENT_T_PARTY_PAYOR_PARTY_ID"
  add_foreign_key "T_PAYMENT", "T_PARTY", column: "RECEIVER_PARTY_ID", primary_key: "ID", name: "FK_T_PAYMENT_T_PARTY_RECEIVER_PARTY_ID"
  add_foreign_key "T_PAYMENT", "T_PAYMENT_METHOD_TYPE", column: "PAYMENT_METHOD_TYPE_ID", primary_key: "ID", name: "FK_T_PAYMENT_T_PAYMENT_METHOD_TYPE"
  add_foreign_key "T_PAYMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAYMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PAYMENT_ACCOUNTING_TRANSACTION", "T_EXTERNAL_ACCOUNTING_TRANSACTION", column: "TRANSACTION_ID", primary_key: "TRANSACTION_ID", name: "FK_T_PAYMENT_ACCOUNTING_TRANSACTION_T_EXTERNAL_ACCOUNTING_TRANSACTION"
  add_foreign_key "T_PAYMENT_ACCOUNTING_TRANSACTION", "T_PAYMENT", column: "PAYMENT_ID", primary_key: "ID", name: "FK_T_PAYMENT_ACCOUNTING_TRANSACTION_T_PAYMENT"
  add_foreign_key "T_PAYMENT_APPLICATION", "T_BILLING_ACCOUNT", column: "BILLING_ACCOUNT_ID", primary_key: "ID", name: "FK_T_PAYMENT_APPLICATION_T_BILLING_ACCOUNT_BILLING_ACCOUNT_ID"
  add_foreign_key "T_PAYMENT_APPLICATION", "T_INVOICE", column: "INVOICE_ID", primary_key: "ID", name: "FK_T_PAYMENT_APPLICATION_T_INVOICE"
  add_foreign_key "T_PAYMENT_APPLICATION", "T_PAYMENT", column: "PAYMENT_ID", primary_key: "ID", name: "FK_T_PAYMENT_APPLICATION_T_PAYMENT"
  add_foreign_key "T_PAYMENT_APPLICATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_APPLICATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAYMENT_APPLICATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_APPLICATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PAYMENT_DEVICE", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_PAYMENT_DEVICE_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_PAYMENT_DEVICE", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_PAYMENT_DEVICE_T_COMPUTER"
  add_foreign_key "T_PAYMENT_DEVICE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_DEVICE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAYMENT_DEVICE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_DEVICE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PAYMENT_METHOD_ASSIGNMENT", "T_ORGANIZATION", column: "ORGANIZATION_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_ASSIGNMENT_T_ORGANIZATION"
  add_foreign_key "T_PAYMENT_METHOD_ASSIGNMENT", "T_PAYMENT_METHOD_TYPE", column: "PAYMENT_METHOD_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_ASSIGNMENT_T_PAYMENT_METHOD_TYPE"
  add_foreign_key "T_PAYMENT_METHOD_ASSIGNMENT", "T_PAYMENT_PROVIDER_SETTINGS", column: "PAYMENT_PROVIDER_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_ASSIGNMENT_T_PAYMENT_PROVIDER_SETTINGS"
  add_foreign_key "T_PAYMENT_METHOD_ASSIGNMENT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_ASSIGNMENT_T_PRODUCT"
  add_foreign_key "T_PAYMENT_METHOD_TYPE", "T_CODE_VALUE", column: "PAYMENT_TYPE_CV", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_TYPE_T_CODE_VALUE_PAYMENT_TYPE_CV"
  add_foreign_key "T_PAYMENT_METHOD_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAYMENT_METHOD_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PAYMENT_METHOD_TYPE_MAPPING", "T_PAYMENT_METHOD_TYPE", column: "INTERNAL_PAYMENT_METHOD_TYPE_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_TYPE_MAPPING_T_PAYMENT_METHOD_TYPE"
  add_foreign_key "T_PAYMENT_METHOD_TYPE_MAPPING", "T_PAYMENT_PROVIDER_PAYMENT_TYPE", column: "PROVIDER_PAYMENT_METHOD_TYPE_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_TYPE_MAPPING_T_PAYMENT_PROVIDER_PAYMENT_TYPE"
  add_foreign_key "T_PAYMENT_METHOD_TYPE_MAPPING", "T_PAYMENT_PROVIDER_SETTINGS", column: "PAYMENT_PROVIDER_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_TYPE_MAPPING_T_PAYMENT_PROVIDER_SETTINGS"
  add_foreign_key "T_PAYMENT_METHOD_TYPE_MAPPING", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_TYPE_MAPPING_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAYMENT_METHOD_TYPE_MAPPING", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_METHOD_TYPE_MAPPING_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PAYMENT_PROVIDER_PAYMENT_TYPE", "T_CODE_VALUE", column: "PAYMENT_PROVIDER_CV", primary_key: "ID", name: "FK_T_PAYMENT_PROVIDER_PAYMENT_TYPE_T_CODE_VALUE_PAYMENT_PROVIDER_CV"
  add_foreign_key "T_PAYMENT_PROVIDER_PAYMENT_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_PROVIDER_PAYMENT_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAYMENT_PROVIDER_PAYMENT_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_PROVIDER_PAYMENT_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PAYMENT_PROVIDER_SETTINGS", "T_CODE_VALUE", column: "PAYMENT_PROVIDER_CV", primary_key: "ID", name: "FK_T_PAYMENT_PROVIDER_SETTINGS_T_CODE_VALUE_PAYMENT_PROVIDER_CV"
  add_foreign_key "T_PAYMENT_PROVIDER_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_PROVIDER_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAYMENT_PROVIDER_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_PROVIDER_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PAYMENT_STATUS_HISTORY", "T_PAYMENT", column: "ID", primary_key: "ID", name: "FK_T_PAYMENT_STATUS_HISTORY_T_PAYMENT"
  add_foreign_key "T_PAYMENT_TERMINAL", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_PAYMENT_TERMINAL_T_COMPUTER_COMPUTER_ID"
  add_foreign_key "T_PAYMENT_TERMINAL", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_TERMINAL_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PAYMENT_TERMINAL", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PAYMENT_TERMINAL_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PENDING_WEB_ACCOUNT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PENDING_WEB_ACCOUNT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PENDING_WEB_ACCOUNT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PENDING_WEB_ACCOUNT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PERSON", "T_CODE_VALUE", column: "GENDER_CV", primary_key: "ID", name: "FK_T_PERSON_T_CODE_VALUE_GENDER_CV"
  add_foreign_key "T_PERSON", "T_CODE_VALUE", column: "SUFFIX_CV", primary_key: "ID", name: "FK_T_PERSON_T_CODE_VALUE_SUFFIX_CV"
  add_foreign_key "T_PERSON", "T_CODE_VALUE", column: "TITLE_CV", primary_key: "ID", name: "FK_T_PERSON_T_CODE_VALUE_TITLE_CV"
  add_foreign_key "T_PERSON", "T_PARTY", column: "ID", primary_key: "ID", name: "FK_T_PERSON_T_PARTY"
  add_foreign_key "T_PERSON", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PERSON_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PERSON", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PERSON_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PERSON_ID_CARD", "T_ID_CARD", column: "ID_CARD_TEMPLATE_ID", primary_key: "ID", name: "FK_T_PERSON_ID_CARD_T_ID_CARD_ID_CARD_TEMPLATE_ID"
  add_foreign_key "T_PERSON_ID_CARD", "T_PERSON", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PERSON_ID_CARD_T_PERSON_PERSON_ID"
  add_foreign_key "T_PERSON_ID_CARD", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PERSON_ID_CARD_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PERSON_ID_CARD", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PERSON_ID_CARD_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PERSON_MERGE_HISTORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PERSON_MERGE_HISTORY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PERSON_MERGE_HISTORY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PERSON_MERGE_HISTORY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PERSON_NAME", "T_CODE_VALUE", column: "NAME_TYPE_CV", primary_key: "ID", name: "FK_T_PERSON_NAME_T_CODE_VALUE"
  add_foreign_key "T_PERSON_NAME", "T_PERSON", column: "PERSON_ID", primary_key: "ID", name: "FK_T_PERSON_NAME_T_PERSON"
  add_foreign_key "T_PERSON_NAME", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PERSON_NAME_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PERSON_NAME", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PERSON_NAME_T_USER_ACCOUNTLAST_UPDATE_USER_ID"
  add_foreign_key "T_PERSON_ROLE", "T_PARTY_ROLE", column: "ID", primary_key: "ID", name: "FK_T_PERSON_ROLE_T_PARTY_ROLE"
  add_foreign_key "T_PERSON_SHALA_ENROLLED", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PERSON_SHALA_ENROLLED_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PERSON_SHALA_ENROLLED", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PERSON_SHALA_ENROLLED_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_POS_HOTKEY", "T_POS_HOTKEY_PROFILE", column: "POS_HOTKEY_PROFILE_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_T_POS_HOTKEY_PROFILE"
  add_foreign_key "T_POS_HOTKEY", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_T_PRODUCT"
  add_foreign_key "T_POS_HOTKEY", "T_PRODUCT_CATEGORY", column: "PRODUCT_CATEGORY_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_T_PRODUCT_CATEGORY"
  add_foreign_key "T_POS_HOTKEY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_POS_HOTKEY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_POS_HOTKEY_PROFILE", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_POS_HOTKEY_PROFILE_T_CODE_VALUE_ID"
  add_foreign_key "T_POS_HOTKEY_PROFILE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_PROFILE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_POS_HOTKEY_PROFILE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_PROFILE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_POS_HOTKEY_PROFILE_ASSIGNMENT", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_PROFILE_ASSIGNMENT_T_COMPUTER_COMPUTER_ID"
  add_foreign_key "T_POS_HOTKEY_PROFILE_ASSIGNMENT", "T_POS_HOTKEY_PROFILE", column: "POS_HOTKEY_PROFILE_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_PROFILE_ASSIGNMENT_T_POS_HOTKEY_PROFILE_POS_HOTKEY_PROFILE_ID"
  add_foreign_key "T_POS_HOTKEY_PROFILE_ASSIGNMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_PROFILE_ASSIGNMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_POS_HOTKEY_PROFILE_ASSIGNMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_POS_HOTKEY_PROFILE_ASSIGNMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE", "T_AGREEMENT", column: "AGREEMENT_ID", primary_key: "ID", name: "FK_T_PRICE_T_AGREEMENT_AGREEMENT_ID"
  add_foreign_key "T_PRICE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_ASSIGNMENT", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PRICE_ASSIGNMENT_T_PARTY_PARTY_ID"
  add_foreign_key "T_PRICE_ASSIGNMENT", "T_PRICE", column: "PRICE_ID", primary_key: "ID", name: "FK_T_PRICE_ASSIGNMENT_T_PRICE_PRICE_ID"
  add_foreign_key "T_PRICE_ASSIGNMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_ASSIGNMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_ASSIGNMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_ASSIGNMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY", "T_AGE_BRACKET", column: "AGE_BRACKET_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_T_AGE_BRACKET_AGE_BRACKET_ID"
  add_foreign_key "T_PRICE_CATEGORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY_AGE_BRACKET", "T_PRICE_CATEGORY", column: "PRICE_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_AGE_BRACKET_T_PRICE_CATEGORY_PRICE_CATEGORY_ID"
  add_foreign_key "T_PRICE_CATEGORY_AGE_BRACKET", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_AGE_BRACKET_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY_AGE_BRACKET", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_AGE_BRACKET_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY_FAMILY_RELATIONSHIP", "T_CODE_VALUE", column: "FAMILY_RELATIONSHIP_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_FAMILY_RELATIONSHIP_T_CODE_VALUE_FAMILY_RELATIONSHIP_TYPE_CV"
  add_foreign_key "T_PRICE_CATEGORY_FAMILY_RELATIONSHIP", "T_PRICE_CATEGORY", column: "PRICE_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_FAMILY_RELATIONSHIP_T_PRICE_CATEGORY_PRICE_CATEGORY_ID"
  add_foreign_key "T_PRICE_CATEGORY_FAMILY_RELATIONSHIP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_FAMILY_RELATIONSHIP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY_FAMILY_RELATIONSHIP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_FAMILY_RELATIONSHIP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY_MEMBERSHIP", "T_MEMBERSHIP_TYPE", column: "MEMBERSHIP_TYPE_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_MEMBERSHIP_T_MEMBERSHIP_TYPE_MEMBERSHIP_TYPE_ID"
  add_foreign_key "T_PRICE_CATEGORY_MEMBERSHIP", "T_PRICE_CATEGORY", column: "PRICE_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_MEMBERSHIP_T_PRICE_CATEGORY_PRICE_CATEGORY_ID"
  add_foreign_key "T_PRICE_CATEGORY_MEMBERSHIP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_MEMBERSHIP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY_MEMBERSHIP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_MEMBERSHIP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY", "T_PRICE_CATEGORY", column: "PRICE_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY_T_PRICE_CATEGORY_PRICE_CATEGORY_ID"
  add_foreign_key "T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_CATEGORY_MEMBERSHIP_TYPE_ELIGIBILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_COMPONENT", "T_AGREEMENT_ITEM", column: "AGREEMENT_ITEM_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_AGREEMENT_ITEM"
  add_foreign_key "T_PRICE_COMPONENT", "T_CODE_VALUE", column: "BILLING_FREQUENCY_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_CODE_VALUE_BILLING_FREQUENCY_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT", "T_CODE_VALUE", column: "DURATION_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_CODE_VALUE_DURATION_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT", "T_CODE_VALUE", column: "PARTY_ROLE_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_CODE_VALUE_PARTY_ROLE_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT", "T_CODE_VALUE", column: "PRICING_METHOD_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_CODE_VALUE_PRICING_METHOD_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT", "T_ORDER_VALUE", column: "ORDER_VALUE_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_ORDER_VALUE"
  add_foreign_key "T_PRICE_COMPONENT", "T_ORGANIZATION", column: "ORGANIZATION_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_ORGANIZATION"
  add_foreign_key "T_PRICE_COMPONENT", "T_PRICE", column: "PRICE_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_PRICE_PRICE_ID"
  add_foreign_key "T_PRICE_COMPONENT", "T_PRICE_CATEGORY", column: "PRICE_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_PRICE_CATEGORY_PRICE_CATEGORY_ID"
  add_foreign_key "T_PRICE_COMPONENT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_PRODUCT"
  add_foreign_key "T_PRICE_COMPONENT", "T_PRODUCT_FEATURE", column: "PRODUCT_FEATURE_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_PRODUCT_FEATURE"
  add_foreign_key "T_PRICE_COMPONENT", "T_RENTAL_PERIOD", column: "RENTAL_PERIOD_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_RENTAL_PERIOD"
  add_foreign_key "T_PRICE_COMPONENT", "T_UNIT_OF_MEASURE", column: "UOM_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_UNIT_OF_MEASURE_UOM_ID"
  add_foreign_key "T_PRICE_COMPONENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_COMPONENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_CODE_VALUE", column: "CURRENCY_MEASURE_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_CODE_VALUE_CURRENCY_MEASURE_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_CODE_VALUE", column: "PARTY_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_CODE_VALUE_PARTY_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_CODE_VALUE", column: "PRICE_COMPONENT_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_CODE_VALUE_PRICE_COMPONENT_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_CODE_VALUE", column: "PRICE_COMPONENT_VALUE_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_CODE_VALUE_PRICE_COMPONENT_VALUE_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_CODE_VALUE", column: "SALE_TYPE_CV", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_CODE_VALUE_SALE_TYPE_CV"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_ORGANIZATION", column: "ORGANIZATION_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_ORGANIZATION"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_PRICE_COMPONENT_GROUP", column: "PARENT_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_PRICE_COMPONENT_GROUP"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_COMPONENT_GROUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_COMPONENT_GROUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRICE_TIME", "T_PRICE", column: "PRICE_ID", primary_key: "ID", name: "FK_T_PRICE_TIME_T_PRICE"
  add_foreign_key "T_PRICE_TIME", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRICE_TIME_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRICE_TIME", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRICE_TIME_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT", "T_CODE_VALUE", column: "ALLOWABLE_GENDERS_CV", primary_key: "ID", name: "FK_T_PRODUCT_T_CODE_VALUE_ALLOWABLE_GENDERS_CV"
  add_foreign_key "T_PRODUCT", "T_CODE_VALUE", column: "PRODUCT_TYPE_CV", primary_key: "ID", name: "FK_T_PRODUCT_T_CODE_VALUE_PRODUCT_TYPE_CV"
  add_foreign_key "T_PRODUCT", "T_CODE_VALUE", column: "PRORATE_TYPE_CV", primary_key: "ID", name: "FK_T_PRODUCT_T_CODE_VALUE_PRORATE_TYPE_CV"
  add_foreign_key "T_PRODUCT", "T_PRODUCT_BRAND", column: "PRODUCT_BRAND_ID", primary_key: "ID", name: "FK_T_PRODUCT_T_PRODUCT_BRAND_PRODUCT_BRAND_ID"
  add_foreign_key "T_PRODUCT", "T_PRODUCT_CATEGORY", column: "PRODUCT_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRODUCT_T_PRODUCT_CATEGORY_CATEGORY_ID"
  add_foreign_key "T_PRODUCT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_BRAND", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_GROUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_BRAND", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_GROUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_CATEGORY", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_PRODUCT_CATEGORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_CATEGORY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_CATEGORY_CLASS", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_CLASS_T_PRODUCT"
  add_foreign_key "T_PRODUCT_CATEGORY_CLASS", "T_PRODUCT_CATEGORY", column: "PRODUCT_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_CLASS_T_PRODUCT_CATEGORY"
  add_foreign_key "T_PRODUCT_CATEGORY_CLASS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_CLASS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_CATEGORY_CLASS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_CLASS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_CATEGORY_ROLLUP", "T_PRODUCT_CATEGORY", column: "FROM_PRODUCT_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_ROLLUP_T_PRODUCT_CATEGORY_FROM_PRODUCT_CATEGORY_ID"
  add_foreign_key "T_PRODUCT_CATEGORY_ROLLUP", "T_PRODUCT_CATEGORY", column: "TO_PRODUCT_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_ROLLUP_T_PRODUCT_CATEGORY_TO_PRODUCT_CATEGORY_ID"
  add_foreign_key "T_PRODUCT_CATEGORY_ROLLUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_ROLLUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_CATEGORY_ROLLUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_CATEGORY_ROLLUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_CODE", "T_CODE_VALUE", column: "BILLING_FREQUENCY_CV", primary_key: "ID", name: "FK_T_PRODUCT_CODE_T_CODE_VALUE_BILLING_FREQUENCY_CV"
  add_foreign_key "T_PRODUCT_CODE", "T_DURATION", column: "DURATION_ID", primary_key: "ID", name: "FK_T_PRODUCT_CODE_T_DURATION_DURATION_ID"
  add_foreign_key "T_PRODUCT_CODE", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_PRODUCT_CODE_T_PARTY_PARTY_ID"
  add_foreign_key "T_PRODUCT_CODE", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_PRODUCT_CODE_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_PRODUCT_CODE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_CODE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_CODE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_CODE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_COMPONENT", "T_PRODUCT", column: "FROM_PRODUCT_ID", primary_key: "ID", name: "FK_T_PRODUCT_COMPONENT_T_PRODUCT_FROM_PRODUCT_ID"
  add_foreign_key "T_PRODUCT_COMPONENT", "T_PRODUCT", column: "TO_PRODUCT_ID", primary_key: "ID", name: "FK_T_PRODUCT_COMPONENT_T_PRODUCT_TO_PRODUCT_ID"
  add_foreign_key "T_PRODUCT_COMPONENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_COMPONENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_COMPONENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_COMPONENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_FACILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_FACILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_FACILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_FACILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_FEATURE", "T_CODE_VALUE", column: "PRODUCT_FEATURE_TYPE_CV", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_T_CODE_VALUE_PRODUCT_FEATURE_TYPE_CV"
  add_foreign_key "T_PRODUCT_FEATURE", "T_PRODUCT_FEATURE_CATEGORY", column: "PRODUCT_FEATURE_CATEGORY_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_T_PRODUCT_FEATURE_CATEGORY"
  add_foreign_key "T_PRODUCT_FEATURE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_FEATURE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_FEATURE_APPLICABILITY", "T_CODE_VALUE", column: "PRODUCT_FEATURE_APPLICABILITY_TYPE_CV", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_APPLICABILITY_T_CODE_VALUE"
  add_foreign_key "T_PRODUCT_FEATURE_APPLICABILITY", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_APPLICABILITY_T_PRODUCT"
  add_foreign_key "T_PRODUCT_FEATURE_APPLICABILITY", "T_PRODUCT_FEATURE", column: "PRODUCT_FEATURE_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_APPLICABILITY_T_PRODUCT_FEATURE"
  add_foreign_key "T_PRODUCT_FEATURE_APPLICABILITY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_APPLICABILITY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_FEATURE_APPLICABILITY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_APPLICABILITY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_FEATURE_CATEGORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_CATEGORY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_FEATURE_CATEGORY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_FEATURE_CATEGORY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_IDENTIFICATION", "T_CODE_VALUE", column: "IDENTIFICATION_TYPE_CV", primary_key: "ID", name: "FK_T_PRODUCT_IDENTIFICATION_T_CODE_VALUE_IDENTIFICATION_TYPE_CV"
  add_foreign_key "T_PRODUCT_IDENTIFICATION", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_PRODUCT_IDENTIFICATION_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_PRODUCT_IDENTIFICATION", "T_UNIT_OF_MEASURE", column: "UOM_ID", primary_key: "ID", name: "FK_T_PRODUCT_IDENTIFICATION_T_UNIT_OF_MEASURE_UOM_ID"
  add_foreign_key "T_PRODUCT_IDENTIFICATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_IDENTIFICATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_IDENTIFICATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_IDENTIFICATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PRODUCT_MEMBERSHIP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_MEMBERSHIP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PRODUCT_MEMBERSHIP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PRODUCT_MEMBERSHIP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PROGRAM_CHECK_IN", "T_REGISTRATION", column: "REGISTRATION_ID", primary_key: "ID", name: "FK_T_PROGRAM_CHECK_IN_T_REGISTRATION_REGISTRATION_ID"
  add_foreign_key "T_PROGRAM_CLASSIFICATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_PROGRAM_CLASSIFICATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_PROGRAM_CLASSIFICATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_PROGRAM_CLASSIFICATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_PROGRAM_INSTRUCTOR", "T_COURSE", column: "PROGRAM_ID", primary_key: "ID", name: "FK_T_PROGRAM_INSTRUCTOR_T_COURSE_PROGRAM_ID"
  add_foreign_key "T_QUALIFICATION_TYPE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_QUALIFICATION_TYPE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_QUALIFICATION_TYPE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_QUALIFICATION_TYPE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_QUERY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_QUERY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_QUERY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_QUERY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_QUERY_PARAMETER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_QUERY_PARAMETER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_QUERY_PARAMETER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_QUERY_PARAMETER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_QUERY_PARAMETER_ENTITY_RELATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_QUERY_PARAMETER_ENTITY_RELATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_QUERY_PARAMETER_ENTITY_RELATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_QUERY_PARAMETER_ENTITY_RELATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_QUERY_TASK", "T_SCHEDULED_TASK", column: "SCHEDULED_TASK_ID", primary_key: "ID", name: "FK_T_QUERY_TASK_T_SCHEDULED_TASK"
  add_foreign_key "T_QUERY_TASK", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_QUERY_TASK_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_QUERY_TASK", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_QUERY_TASK_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_REGISTRATION", "T_CODE_VALUE", column: "REMOVAL_METHOD_CV", primary_key: "ID", name: "FK_T_REGISTRATION_T_CODE_VALUE_REMOVAL_METHOD_CV"
  add_foreign_key "T_REGISTRATION", "T_COURSE", column: "COURSE_ID", primary_key: "ID", name: "FK_T_REGISTRATION_T_COURSE_COURSE_ID"
  add_foreign_key "T_REGISTRATION", "T_COURSE_OFFERING", column: "COURSE_OFFERING_ID", primary_key: "ID", name: "FK_T_REGISTRATION_T_COURSE_SECTION_SECTION_ID"
  add_foreign_key "T_REGISTRATION", "T_PROGRAM_INSTANCE", column: "PROGRAM_INSTANCE_ID", primary_key: "ID", name: "FK_T_REGISTRATION_T_PROGRAM_INSTANCE_PROGRAM_INSTANCE_ID"
  add_foreign_key "T_REGISTRATION", "T_SEMESTER", column: "SEMESTER_ID", primary_key: "ID", name: "FK_T_REGISTRATION_T_SEMESTER_SEMESTER_ID"
  add_foreign_key "T_REGISTRATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_REGISTRATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_REGISTRATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_REGISTRATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_REGISTRATION_PICKUP_PARTY", "T_REGISTRATION", column: "REGISTRATION_ID", primary_key: "ID", name: "FK_T_REGISTRATION_PICKUP_PARTY_T_REGISTRATION_REGISTRATION_ID"
  add_foreign_key "T_REGISTRATION_PICKUP_PARTY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_REGISTRATION_PICKUP_PARTY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_REGISTRATION_PICKUP_PARTY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_REGISTRATION_PICKUP_PARTY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_RENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_RENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_RENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_RENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_RENTAL_PERIOD", "T_CODE_VALUE", column: "DUE_BACK_TYPE_CV", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_T_CODE_VALUE_DUE_BACK_TYPE_CV"
  add_foreign_key "T_RENTAL_PERIOD", "T_RENTAL_PERIOD_GROUP", column: "RENTAL_PERIOD_GROUP_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_T_RENTAL_PERIOD_GROUP_RENTAL_PERIOD_GROUP_ID"
  add_foreign_key "T_RENTAL_PERIOD", "T_UNIT_OF_MEASURE", column: "UOM_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_T_UNIT_OF_MEASURE_UOM_ID"
  add_foreign_key "T_RENTAL_PERIOD", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_RENTAL_PERIOD", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_RENTAL_PERIOD_GROUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_GROUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_RENTAL_PERIOD_GROUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_GROUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY", "T_PRODUCT_CATEGORY", column: "PRODUCT_CATEGORY_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY_T_PRODUCT_CATEGORY_PRODUCT_CATEGORY_ID"
  add_foreign_key "T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY", "T_RENTAL_PERIOD_GROUP", column: "RENTAL_PERIOD_GROUP_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY_T_RENTAL_PERIOD_GROUP_RENTAL_PERIOD_GROUP_ID"
  add_foreign_key "T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_RENTAL_PERIOD_GROUP_PRODUCT_CATEGORY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_REORDER_GUIDELINE", "T_FACILITY", column: "FACILITY_ID", primary_key: "ID", name: "FK_T_REORDER_GUIDELINE_T_FACILITY"
  add_foreign_key "T_REORDER_GUIDELINE", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_REORDER_GUIDELINE_T_PRODUCT"
  add_foreign_key "T_REORDER_GUIDELINE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_REORDER_GUIDELINE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_REORDER_GUIDELINE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_REORDER_GUIDELINE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_REPORT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_REPORT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_REPORT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_REPORT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_REPORT_GROUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_REPORT_GROUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_REPORT_GROUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_REPORT_GROUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_REVENUE_TYPE_TAX_GROUP", "T_CODE_VALUE", column: "REVENUE_TYPE_CV", primary_key: "ID", name: "FK_T_REVENUE_TYPE_TAX_GROUP_T_CODE_VALUE_REVENUE_TYPE_CV"
  add_foreign_key "T_REVENUE_TYPE_TAX_GROUP", "T_TAX_GROUP", column: "TAX_GROUP_ID", primary_key: "ID", name: "FK_T_REVENUE_TYPE_TAX_GROUP_T_TAX_GROUP"
  add_foreign_key "T_REVENUE_TYPE_TAX_GROUP", "T_TAX_REGION", column: "TAX_REGION_ID", primary_key: "ID", name: "FK_T_REVENUE_TYPE_TAX_GROUP_T_TAX_REGION"
  add_foreign_key "T_REVENUE_TYPE_TAX_GROUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_REVENUE_TYPE_TAX_GROUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_REVENUE_TYPE_TAX_GROUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_REVENUE_TYPE_TAX_GROUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SALES_ACCOUNTING_TRANSACTION", "T_EXTERNAL_ACCOUNTING_TRANSACTION", column: "TRANSACTION_ID", primary_key: "TRANSACTION_ID", name: "FK_T_SALES_ACCOUNTING_TRANSACTION_T_EXTERNAL_ACCOUNTING_TRANSACTION"
  add_foreign_key "T_SALES_ACCOUNTING_TRANSACTION", "T_INVOICE", column: "INVOICE_ID", primary_key: "ID", name: "FK_T_SALES_ACCOUNTING_TRANSACTION_T_INVOICE"
  add_foreign_key "T_SALES_ORDER", "T_ORDER", column: "ID", primary_key: "ID", name: "FK_T_SALES_ORDER_T_ORDER_ID"
  add_foreign_key "T_SALES_RECEIPT_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SALES_RECEIPT_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SALES_RECEIPT_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SALES_RECEIPT_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SALES_TAX_LOOKUP", "T_GEOGRAPHIC_LOCATION", column: "GEOGRAPHIC_LOCATION_ID", primary_key: "ID", name: "FK_T_SALES_TAX_LOOKUP_T_GEOGRAPHIC_LOCATION"
  add_foreign_key "T_SALES_TAX_LOOKUP", "T_PRODUCT_CATEGORY", column: "PRODUCT_CATEGORY_ID", primary_key: "ID", name: "FK_T_SALES_TAX_LOOKUP_T_PRODUCT_CATEGORY"
  add_foreign_key "T_SALES_TAX_LOOKUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SALES_TAX_LOOKUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SALES_TAX_LOOKUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SALES_TAX_LOOKUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SAVED_PAYMENT_INFO", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SAVED_PAYMENT_INFO_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SAVED_PAYMENT_INFO", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SAVED_PAYMENT_INFO_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SCHEDULED_PROGRAM", "T_CODE_VALUE", column: "ONLINE_REGISTRATION_PERIOD_CLOSES_UNIT_CV", primary_key: "ID", name: "FK_T_SCHEDULED_PROGRAM_T_CODE_VALUE_ONLINE_REGISTRATION_PERIOD_CLOSES_UNIT_CV"
  add_foreign_key "T_SCHEDULED_PROGRAM", "T_CODE_VALUE", column: "ONLINE_REGISTRATION_PERIOD_OPENS_UNIT_CV", primary_key: "ID", name: "FK_T_SCHEDULED_PROGRAM_T_CODE_VALUE_ONLINE_REGISTRATION_PERIOD_OPENS_UNIT_CV"
  add_foreign_key "T_SCHEDULED_PROGRAM", "T_CODE_VALUE", column: "REGISTRATION_PERIOD_CLOSES_UNIT_CV", primary_key: "ID", name: "FK_T_SCHEDULED_PROGRAM_T_CODE_VALUE_REGISTRATION_PERIOD_CLOSES_UNIT_CV"
  add_foreign_key "T_SCHEDULED_PROGRAM", "T_CODE_VALUE", column: "REGISTRATION_PERIOD_OPENS_UNIT_CV", primary_key: "ID", name: "FK_T_SCHEDULED_PROGRAM_T_CODE_VALUE_REGISTRATION_PERIOD_OPENS_UNIT_CV"
  add_foreign_key "T_SCHEDULED_PROGRAM", "T_COURSE", column: "ID", primary_key: "ID", name: "FK_T_COURSE_SCHEDULE_OFFERING_T_COURSE_ID"
  add_foreign_key "T_SCHEDULED_TASK", "T_CODE_VALUE", column: "LAST_RUN_STATUS_CV", primary_key: "ID", name: "FK_T_SCHEDULED_TASK_T_CODE_VALUE_LAST_RUN_STATUS_CV"
  add_foreign_key "T_SCHEDULED_TASK", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SCHEDULED_TASK_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SCHEDULED_TASK", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SCHEDULED_TASK_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SCHEDULED_TASK_LOG", "T_CODE_VALUE", column: "STATUS_CV", primary_key: "ID", name: "FK_T_SCHEDULED_TASK_LOG_T_CODE_VALUE_STATUS_CV"
  add_foreign_key "T_SCHEDULED_TASK_LOG", "T_CODE_VALUE", column: "TASK_TYPE_CV", primary_key: "ID", name: "FK_T_SCHEDULED_TASK_LOG_T_CODE_VALUE_TASK_TYPE_CV"
  add_foreign_key "T_SCHEDULED_TASK_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SCHEDULED_TASK_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SCHEDULED_TASK_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SCHEDULED_TASK_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SECURITY_OPERATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_OPERATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SECURITY_OPERATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_OPERATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SECURITY_ROLE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SECURITY_ROLE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SECURITY_ROLE_ASSIGNMENT", "T_SECURITY_ROLE", column: "SECURITY_ROLE_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_ASSIGNMENT_T_SECURITY_ROLE"
  add_foreign_key "T_SECURITY_ROLE_ASSIGNMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_ASSIGNMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SECURITY_ROLE_ASSIGNMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_ASSIGNMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SECURITY_ROLE_ASSIGNMENT", "T_USER_ACCOUNT", column: "USER_ACCOUNT_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_ASSIGNMENT_T_USER_ACCOUNT_USER_ACCOUNT_ID"
  add_foreign_key "T_SECURITY_ROLE_REPORT", "T_SECURITY_ROLE", column: "SECURITY_ROLE_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_REPORT_T_SECURITY_ROLE"
  add_foreign_key "T_SECURITY_ROLE_REPORT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_REPORT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SECURITY_ROLE_REPORT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_REPORT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SECURITY_ROLE_TASK", "T_SECURITY_ROLE", column: "SECURITY_ROLE_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_TASK_T_SECURITY_ROLE"
  add_foreign_key "T_SECURITY_ROLE_TASK", "T_SECURITY_TASK", column: "SECURITY_TASK_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_TASK_T_SECURITY_TASK"
  add_foreign_key "T_SECURITY_ROLE_TASK", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_TASK_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SECURITY_ROLE_TASK", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_ROLE_TASK_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SECURITY_TASK", "T_SECURITY_TASK", column: "PARENT_ID", primary_key: "ID", name: "FK_T_SECURITY_TASK_T_SECURITY_TASK"
  add_foreign_key "T_SECURITY_TASK", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_TASK_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SECURITY_TASK", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_TASK_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SECURITY_TASK_OPERATION", "T_SECURITY_OPERATION", column: "SECURITY_OPERATION_ID", primary_key: "ID", name: "FK_T_SECURITY_TASK_OPERATION_T_SECURITY_OPERATION"
  add_foreign_key "T_SECURITY_TASK_OPERATION", "T_SECURITY_TASK", column: "SECURITY_TASK_ID", primary_key: "ID", name: "FK_T_SECURITY_TASK_OPERATION_T_SECURITY_TASK"
  add_foreign_key "T_SECURITY_TASK_OPERATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_TASK_OPERATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SECURITY_TASK_OPERATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SECURITY_TASK_OPERATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SELF_REGISTRATION", "T_CODE_VALUE", column: "SOURCE_TYPE_CV", primary_key: "ID", name: "FK_T_SELF_REGISTRATION_T_CODE_VALUE_SOURCE_TYPE_CV"
  add_foreign_key "T_SELF_REGISTRATION", "T_PERSON", column: "PERSON_ID", primary_key: "ID", name: "FK_T_SELF_REGISTRATION_T_PERSON"
  add_foreign_key "T_SEMESTER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SEMESTER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SEMESTER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SEMESTER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SERVICE_PERIOD_CUSTOM_DATE_RANGE", "T_CUSTOM_DATE_RANGE", column: "CUSTOM_DATE_RANGE_ID", primary_key: "ID", name: "FK_T_SERVICE_PERIOD_CUSTOM_DATE_RANGE_T_CUSTOM_DATE_RANGE_CUSTOM_DATE_RANGE_ID"
  add_foreign_key "T_SERVICE_PERIOD_CUSTOM_DATE_RANGE", "T_UNIT_OF_MEASURE", column: "SERVICE_PERIOD_ID", primary_key: "ID", name: "FK_T_SERVICE_PERIOD_CUSTOM_DATE_RANGE_T_UNIT_OF_MEASURE_SERVICE_PERIOD_ID"
  add_foreign_key "T_SERVICE_PERIOD_CUSTOM_DATE_RANGE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SERVICE_PERIOD_CUSTOM_DATE_RANGE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SERVICE_PERIOD_CUSTOM_DATE_RANGE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SERVICE_PERIOD_CUSTOM_DATE_RANGE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SHALA_INTEGRATION_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SHALA_INTEGRATION_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SHALA_INTEGRATION_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SHALA_INTEGRATION_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SHIFT4_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SHIFT4_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SHIFT4_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SHIFT4_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SHIPMENT_PACKAGE", "T_FACILITY", column: "RECEIVER_FACILITY_ID", primary_key: "ID", name: "FK_T_SHIPMENT_PACKAGE_T_FACILITY_RECEIVER_FACILITY_ID"
  add_foreign_key "T_SHIPMENT_PACKAGE", "T_FACILITY", column: "SENDER_FACILITY_ID", primary_key: "ID", name: "FK_T_SHIPMENT_PACKAGE_T_FACILITY_SENDER_FACILITY_ID"
  add_foreign_key "T_SHIPMENT_PACKAGE", "T_PARTY", column: "RECEIVER_PARTY_ID", primary_key: "ID", name: "FK_T_SHIPMENT_PACKAGE_T_PARTY_RECEIVER_PARTY_ID"
  add_foreign_key "T_SHIPMENT_PACKAGE", "T_PARTY", column: "SENDER_PARTY_ID", primary_key: "ID", name: "FK_T_SHIPMENT_PACKAGE_T_PARTY_SENDER_PARTY_ID"
  add_foreign_key "T_SHIPMENT_PACKAGE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SHIPMENT_PACKAGE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SHIPMENT_PACKAGE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SHIPMENT_PACKAGE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SHORTEN_URL", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SHORTEN_URL_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SHORTEN_URL", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SHORTEN_URL_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SIGN_ON_INTEGRATION_LOG", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_SIGN_ON_INTEGRATION_LOG_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_SIGN_ON_INTEGRATION_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SIGN_ON_INTEGRATION_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SIGN_ON_INTEGRATION_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SIGN_ON_INTEGRATION_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SOCIAL_MEDIA_WEB_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SOCIAL_MEDIA_WEB_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SOCIAL_MEDIA_WEB_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SOCIAL_MEDIA_WEB_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SUPPLIER", "T_ORGANIZATION_ROLE", column: "ID", primary_key: "ID", name: "FK_T_SUPPLIER_T_ORGANIZATION_ROLE"
  add_foreign_key "T_SUPPLIER_PRODUCT", "T_CODE_VALUE", column: "PREFERENCE_TYPE_CV", primary_key: "ID", name: "FK_T_SUPPLIER_PRODUCT_T_CODE_VALUE_PREFERENCE_TYPE_CV"
  add_foreign_key "T_SUPPLIER_PRODUCT", "T_CODE_VALUE", column: "RATING_TYPE_CV", primary_key: "ID", name: "FK_T_SUPPLIER_PRODUCT_T_CODE_VALUE_RATE_TYPE_CV"
  add_foreign_key "T_SUPPLIER_PRODUCT", "T_ORGANIZATION", column: "ORGANIZATION_ID", primary_key: "ID", name: "FK_T_SUPPLIER_PRODUCT_T_ORGANIZATION"
  add_foreign_key "T_SUPPLIER_PRODUCT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_SUPPLIER_PRODUCT_T_PRODUCT"
  add_foreign_key "T_SUPPLIER_PRODUCT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SUPPLIER_PRODUCT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SUPPLIER_PRODUCT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SUPPLIER_PRODUCT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SYSTEM_EVENT_LOG", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_SYSTEM_EVENT_LOG_T_CODE_VALUE_TYPE_CV"
  add_foreign_key "T_SYSTEM_EVENT_LOG", "T_COMPUTER", column: "COMPUTER_ID", primary_key: "ID", name: "FK_T_SYSTEM_EVENT_LOG_T_COMPUTER_COMPUTER_ID"
  add_foreign_key "T_SYSTEM_EVENT_LOG", "T_HARDWARE_DEVICE", column: "HARDWARE_DEVICE_ID", primary_key: "ID", name: "FK_T_SYSTEM_EVENT_LOG_T_HARDWARE_DEVICE_HARDWARE_DEVICE_ID"
  add_foreign_key "T_SYSTEM_EVENT_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_EVENT_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SYSTEM_EVENT_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_EVENT_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SYSTEM_SETTINGS", "T_CODE_VALUE", column: "IMAGE_SERVICE_ID_ENCODING_TYPE_CV", primary_key: "ID", name: "FK_T_SYSTEM_SETTINGS_T_CODE_VALUE_IMAGE_SERVICE_ID_ENCODING_TYPE_CV"
  add_foreign_key "T_SYSTEM_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SYSTEM_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SYSTEM_SSO_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_SSO_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SYSTEM_SSO_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_SSO_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SYSTEM_WEBAPI_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEBAPI_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SYSTEM_WEBAPI_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEBAPI_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SYSTEM_WEB_APP_SETTINGS", "T_CODE_VALUE", column: "TYPE_CV", primary_key: "ID", name: "FK_T_SYSTEM_WEB_APP_SETTINGS_T_CODE_VALUE_PAYMENT_PROCESSOR_TYPE_CV"
  add_foreign_key "T_SYSTEM_WEB_APP_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_APP_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SYSTEM_WEB_APP_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_APP_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SYSTEM_WEB_SITEMAP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_SITEMAP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SYSTEM_WEB_SITEMAP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_SITEMAP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_SYSTEM_WEB_THEME", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_THEME_T_USER_ACCOUNT"
  add_foreign_key "T_SYSTEM_WEB_THEME", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_THEME_T_USER_ACCOUNT1"
  add_foreign_key "T_SYSTEM_WEB_THEME_CSS", "T_SYSTEM_WEB_THEME", column: "THEME_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_THEME_CSS_T_SYSTEM_WEB_THEME"
  add_foreign_key "T_SYSTEM_WEB_THEME_CSS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_THEME_CSS_T_USER_ACCOUNT"
  add_foreign_key "T_SYSTEM_WEB_THEME_CSS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_THEME_CSS_T_USER_ACCOUNT1"
  add_foreign_key "T_SYSTEM_WEB_WIDGET_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_WIDGET_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_SYSTEM_WEB_WIDGET_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_SYSTEM_WEB_WIDGET_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TAX_GROUP", "T_TAX_REGION", column: "TAX_REGION_ID", primary_key: "ID", name: "FK_T_TAX_GROUP_T_TAX_REGION"
  add_foreign_key "T_TAX_GROUP_ITEM", "T_CODE_VALUE", column: "TAX_TYPE_CV", primary_key: "ID", name: "FK_T_TAX_GROUP_ITEM_T_CODE_VALUE_TAX_TYPE_CV"
  add_foreign_key "T_TAX_GROUP_ITEM", "T_TAX_GROUP", column: "TAX_GROUP_ID", primary_key: "ID", name: "FK_T_TAX_GROUP_ITEM_T_TAX_GROUP"
  add_foreign_key "T_TAX_GROUP_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TAX_GROUP_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TAX_GROUP_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TAX_GROUP_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TAX_ITEM", "T_CODE_VALUE", column: "TAX_TYPE_CV", primary_key: "ID", name: "FK_T_TAX_ITEM_T_CODE_VALUE_TAX_TYPE_CV"
  add_foreign_key "T_TAX_ITEM", "T_TAX_REGION", column: "TAX_REGION_ID", primary_key: "ID", name: "FK_T_TAX_ITEM_T_TAX_REGION"
  add_foreign_key "T_TAX_ITEM", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TAX_ITEM_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TAX_ITEM", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TAX_ITEM_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TAX_REGION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TAX_REGION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TAX_REGION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TAX_REGION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TAX_REGION_ASSIGNMENT", "T_PARTY", column: "PARTY_ID", primary_key: "ID", name: "FK_T_TAX_REGION_ASSIGNMENT_T_PARTY"
  add_foreign_key "T_TAX_REGION_ASSIGNMENT", "T_TAX_REGION", column: "TAX_REGION_ID", primary_key: "ID", name: "FK_T_TAX_REGION_ASSIGNMENT_T_TAX_REGION"
  add_foreign_key "T_TAX_REGION_ASSIGNMENT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TAX_REGION_ASSIGNMENT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TAX_REGION_ASSIGNMENT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TAX_REGION_ASSIGNMENT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TELEPHONE_NUMBER", "T_CODE_VALUE", column: "CATEGORY_CV", primary_key: "ID", name: "FK_T_TELEPHONE_NUMBER_T_CODE_VALUE2"
  add_foreign_key "T_TELEPHONE_NUMBER", "T_CODE_VALUE", column: "COUNTRY_CODE_CV", primary_key: "ID", name: "FK_T_TELEPHONE_NUMBER_T_CODE_VALUE1"
  add_foreign_key "T_TELEPHONE_NUMBER", "T_CODE_VALUE", column: "DELIVERY_OPTION_CV", primary_key: "ID", name: "FK_T_TELEPHONE_NUMBER_T_CODE_VALUE3"
  add_foreign_key "T_TELEPHONE_NUMBER", "T_CODE_VALUE", column: "TELEPHONE_TYPE_CV", primary_key: "ID", name: "FK_T_TELEPHONE_NUMBER_T_CODE_VALUE"
  add_foreign_key "T_TELEPHONE_NUMBER", "T_CONTACT_MECHANISM", column: "ID", primary_key: "ID", name: "FK_T_TELEPHONE_NUMBER_T_CONTACT_MECHANISM"
  add_foreign_key "T_TELEPHONE_NUMBER", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TELEPHONE_NUMBER_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TELEPHONE_NUMBER", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TELEPHONE_NUMBER_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TENDER_SUMMARY_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TENDER_SUMMARY_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TENDER_SUMMARY_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TENDER_SUMMARY_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TENDER_SUMMARY_RECEIPT_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TENDER_SUMMARY_RECEIPT_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TENDER_SUMMARY_RECEIPT_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TENDER_SUMMARY_RECEIPT_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_THIRD_PARTY_PRICE_CATEGORY_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_THIRD_PARTY_PRICE_CATEGORY_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_THIRD_PARTY_PRICE_CATEGORY_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_THIRD_PARTY_PRICE_CATEGORY_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TOWEL_AGREEMENT", "T_AGREEMENT", column: "ID", primary_key: "ID", name: "FK_T_TOWEL_AGREEMENT_T_AGREEMENT_ID"
  add_foreign_key "T_TOWEL_AGREEMENT", "T_PRICE", column: "PRICE_ID", primary_key: "ID", name: "FK_T_TOWEL_AGREEMENT_T_PRICE_PRICE_ID"
  add_foreign_key "T_TOWEL_AGREEMENT", "T_PRODUCT", column: "PRODUCT_ID", primary_key: "ID", name: "FK_T_TOWEL_AGREEMENT_T_PRODUCT_PRODUCT_ID"
  add_foreign_key "T_TOWEL_AGREEMENT", "T_SEMESTER", column: "SEMESTER_ID", primary_key: "ID", name: "FK_T_TOWEL_AGREEMENT_T_SEMESTER_SEMESTER_ID"
  add_foreign_key "T_TOWEL_SERVICE_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TOWEL_SERVICE_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TOWEL_SERVICE_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TOWEL_SERVICE_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_TOWEL_SERVICE_TYPE", "T_PRODUCT", column: "ID", primary_key: "ID", name: "FK_T_TOWEL_SERVICE_TYPE_T_PRODUCT_ID"
  add_foreign_key "T_TRANSACTION_DETAIL", "T_ACCOUNTING_TRANSACTION", column: "TRANSACTION_ID", primary_key: "ID", name: "FK_T_TRANSACTION_DETAIL_T_ACCOUNTING_TRANSACTION_TRANSACTION_ID"
  add_foreign_key "T_TRANSACTION_DETAIL", "T_BILLING_BATCH", column: "BILLING_BATCH_ID", primary_key: "ID", name: "FK_T_TRANSACTION_DETAIL_T_BILLING_BATCH_BILLING_BATCH_ID"
  add_foreign_key "T_TRANSACTION_DETAIL", "T_INVOICE_ITEM", column: "INVOICE_ITEM_ID", primary_key: "ID", name: "FK_T_TRANSACTION_DETAIL_T_INVOICE_ITEM_INVOICE_ITEM_ID"
  add_foreign_key "T_TRANSACTION_DETAIL", "T_ORGANIZATION_GL_ACCOUNT_BALANCE", column: "ORGANIZATION_GL_ACCOUNT_BALANCE_ID", primary_key: "ID", name: "FK_T_TRANSACTION_DETAIL_T_ORGANIZATION_GL_ACCOUNT_BALANCE_ORGANIZATION_GL_ACCOUNT_BALANCE_ID"
  add_foreign_key "T_TRANSACTION_DETAIL", "T_PAYMENT", column: "PAYMENT_ID", primary_key: "ID", name: "FK_T_TRANSACTION_DETAIL_T_PAYMENT_PAYMENT_ID"
  add_foreign_key "T_TRANSACTION_DETAIL", "T_TRANSACTION_DETAIL", column: "ASSOCIATED_WITH_DETAIL_ID", primary_key: "ID", name: "FK_T_TRANSACTION_DETAIL_T_TRANSACTION_DETAIL_ASSOCIATED_WITH_DETAIL_ID"
  add_foreign_key "T_TRANSLATION", "T_LANGUAGE", column: "LANGUAGE_ID", primary_key: "ID", name: "FK_T_TRANSLATION_T_LANGUAGE"
  add_foreign_key "T_TRANSLATION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_TRANSLATION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_TRANSLATION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_TRANSLATION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_UNIT_OF_MEASURE", "T_UNIT_OF_MEASURE_GROUP", column: "UOM_GROUP_ID", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_T_UNIT_OF_MEASURE_GROUP"
  add_foreign_key "T_UNIT_OF_MEASURE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_UNIT_OF_MEASURE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_UNIT_OF_MEASURE_CONVERSION", "T_UNIT_OF_MEASURE", column: "UOM_ID_FROM", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_CONVERSION_T_UNIT_OF_MEASURE_UOM_ID_FROM"
  add_foreign_key "T_UNIT_OF_MEASURE_CONVERSION", "T_UNIT_OF_MEASURE", column: "UOM_ID_TO", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_CONVERSION_T_UNIT_OF_MEASURE_UOM_ID_TO"
  add_foreign_key "T_UNIT_OF_MEASURE_CONVERSION", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_CONVERSION_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_UNIT_OF_MEASURE_CONVERSION", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_CONVERSION_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_UNIT_OF_MEASURE_GROUP", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_GROUP_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_UNIT_OF_MEASURE_GROUP", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_UNIT_OF_MEASURE_GROUP_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_USERNAME_REQUEST", "T_USER_ACCOUNT", column: "USER_ID", primary_key: "ID", name: "FK_T_USERNAME_REQUEST_T_USER_ACCOUNT_USER_ID"
  add_foreign_key "T_USER_ACCOUNT", "T_COMPUTER", column: "LAST_LOGIN_COMPUTER_ID", primary_key: "ID", name: "FK_T_USER_ACCOUNT_T_COMPUTER_LAST_LOGIN_COMPUTER_ID"
  add_foreign_key "T_USER_ACCOUNT", "T_EMAIL_ADDRESS", column: "EMAIL_ADDRESS_ID", primary_key: "ID", name: "FK_T_USER_ACCOUNT_T_EMAIL_ADDRESS_EMAIL_ADDRESS_ID"
  add_foreign_key "T_USER_ACCOUNT", "T_FACILITY_RESERVATION_PROFILE", column: "FACILITY_RESERVATION_PROFILE_ID", primary_key: "ID", name: "FK_T_USER_ACCOUNT_T_FACILITY_RESERVATION_PROFILE_T_FACILITY_RESERVATION_PROFILE_ID"
  add_foreign_key "T_USER_ACCOUNT", "T_PERSON", column: "PERSON_ID", primary_key: "ID", name: "FK_T_USER_ACCOUNT_T_PERSON_PERSON_ID"
  add_foreign_key "T_USER_ACCOUNT", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_USER_ACCOUNT_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_USER_ACCOUNT", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_USER_ACCOUNT_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_USER_LOGIN_HISTORY", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_USER_LOGIN_HISTORY_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_USER_LOGIN_HISTORY", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_USER_LOGIN_HISTORY_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_USER_PROFILE", "T_CODE_VALUE", column: "SECURITY_QUESTION_CV_1", primary_key: "ID", name: "FK_T_USER_PROFILE_T_CODE_VALUE_SECURITY_QUESTION_CV_1"
  add_foreign_key "T_USER_PROFILE", "T_CODE_VALUE", column: "SECURITY_QUESTION_CV_2", primary_key: "ID", name: "FK_T_USER_PROFILE_T_CODE_VALUE_SECURITY_QUESTION_CV_2"
  add_foreign_key "T_USER_PROFILE", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_USER_PROFILE_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_USER_PROFILE", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_USER_PROFILE_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_USER_PROFILE", "T_USER_ACCOUNT", column: "USER_ACCOUNT_ID", primary_key: "ID", name: "FK_T_USER_PROFILE_T_USER_ACCOUNT"
  add_foreign_key "T_VERIFONE_MX880", "T_PAYMENT_DEVICE", column: "ID", primary_key: "ID", name: "FK_T_VERIFONE_MX880_T_PAYMENT_DEVICE"
  add_foreign_key "T_VERIFONE_VX810", "T_PAYMENT_DEVICE", column: "ID", primary_key: "ID", name: "FK_T_VERIFONE_VX810_T_PAYMENT_DEVICE"
  add_foreign_key "T_WAIVER", "T_DOCUMENT_TEMPLATE", column: "ID", primary_key: "ID", name: "FK_T_WAIVER_T_DOCUMENT_TEMPLATE_ID"
  add_foreign_key "T_WAIVER_RELATIONSHIP", "T_DOCUMENT_TEMPLATE_RELATIONSHIP", column: "ID", primary_key: "ID", name: "FK_T_WAIVER_RELATIONSHIP_T_DOCUMENT_TEMPLATE_RELATIONSHIP_ID"
  add_foreign_key "T_WAIVER_SETTINGS", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_WAIVER_SETTINGS_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_WAIVER_SETTINGS", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_WAIVER_SETTINGS_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_WEB_USER_SIGN_IN_EVENT_LOG", "T_USER_ACCOUNT", column: "CREATION_USER_ID", primary_key: "ID", name: "FK_T_WEB_USER_SIGN_IN_EVENT_LOG_T_USER_ACCOUNT_CREATION_USER_ID"
  add_foreign_key "T_WEB_USER_SIGN_IN_EVENT_LOG", "T_USER_ACCOUNT", column: "LAST_UPDATE_USER_ID", primary_key: "ID", name: "FK_T_WEB_USER_SIGN_IN_EVENT_LOG_T_USER_ACCOUNT_LAST_UPDATE_USER_ID"
  add_foreign_key "T_WORKER", "T_PERSON_ROLE", column: "ID", primary_key: "ID", name: "FK_T_WORKER_T_PERSON_ROLE"
end

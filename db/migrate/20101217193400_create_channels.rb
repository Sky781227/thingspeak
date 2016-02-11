class CreateChannels < ActiveRecord::Migration
  def self.up
    create_table :channels do |t|
      t.integer  "user_id"
      t.string   "name"
      t.string   "description"
      t.decimal  "latitude",                             precision: 15, scale: 10
      t.decimal  "longitude",                            precision: 15, scale: 10
      t.string   "field1"
      t.string   "field2"
      t.string   "field3"
      t.string   "field4"
      t.string   "field5"
      t.string   "field6"
      t.string   "field7"
      t.string   "field8"
      t.integer  "scale1"
      t.integer  "scale2"
      t.integer  "scale3"
      t.integer  "scale4"
      t.integer  "scale5"
      t.integer  "scale6"
      t.integer  "scale7"
      t.integer  "scale8"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "elevation"
      t.integer  "last_entry_id"
      t.boolean  "public_flag",                                                    default: false
      # t.integer  "ranking"
      # t.string   "user_agent"
      # t.string   "realtime_io_serial_number", limit: 36
      # t.text     "metadata"
      # t.datetime "last_write_at"

      t.timestamps
    end

		add_index :channels, :name
  end

  def self.down
    drop_table :channels
  end
end

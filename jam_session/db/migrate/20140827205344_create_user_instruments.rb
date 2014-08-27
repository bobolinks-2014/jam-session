class CreateUserInstruments < ActiveRecord::Migration
  def change
    create_table :user_instruments do |t|
      t.integer :user_id
      t.integer :instrument_id
      t.text :tag_list
      t.integer :skill_level

      t.timestamps
    end
  end
end

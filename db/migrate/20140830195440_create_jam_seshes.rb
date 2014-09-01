class CreateJamSeshes < ActiveRecord::Migration
  def change
    create_table :jam_seshes do |t|
      t.string :name
      t.text :content
      t.date :sesh_date
      t.integer :creator_id
      t.integer :receiver_id
      t.boolean :accepted?, default: false

      t.timestamps
    end
  end
end

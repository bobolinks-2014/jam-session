class CreateJamSeshes < ActiveRecord::Migration
  def change
    create_table :jam_seshes do |t|
      t.string :name
      t.date :sesh_date

      t.timestamps
    end
  end
end

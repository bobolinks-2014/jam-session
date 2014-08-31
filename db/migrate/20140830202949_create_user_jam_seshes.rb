class CreateUserJamSeshes < ActiveRecord::Migration
  def change
    create_table :user_jam_seshes do |t|
      t.integer :jam_sesh_id, :user_id

      t.timestamps
    end
  end
end

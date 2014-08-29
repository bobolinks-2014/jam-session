class CreateUsers < ActiveRecord::Migration
  def change
      create_table :users do |t|
      t.integer :instrument_id
      t.integer :neighborhood_id
      # t.integer :receiver_id
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end

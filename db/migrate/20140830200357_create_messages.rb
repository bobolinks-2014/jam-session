class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content, :name
      t.integer :sender_id, :receiver_id
      t.date :sesh_date

      t.timestamps
    end
  end
end

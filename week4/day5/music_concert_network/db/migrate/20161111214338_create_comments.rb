class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :feedback
      t.string :email
      t.integer :concert_id

      t.timestamps
    end
  end
end

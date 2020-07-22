class CreatePasswords < ActiveRecord::Migration[6.0]
  def change
    create_table :passwords do |t|
      t.string :title
      t.text :password
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true
      t.float :price
      t.text :comment

      t.timestamps
    end
  end
end

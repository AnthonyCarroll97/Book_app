class CreateSpecifications < ActiveRecord::Migration[6.0]
  def change
    create_table :specifications do |t|
      t.string :genre
      t.integer :pages
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
